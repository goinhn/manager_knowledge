# encoding:utf-8


from manage import *
from servers import app_server, information_server
import json
import requests
import hashlib
import pymysql
import logging
import datetime


# 初始登录页面cookie检查
@app.route('/', methods=['GET'])
def index():
    response = request.cookies.get('WTF')
    page = app_server.cookie_checking_all(response, 'student/StudentIndex.html', 'teacher/TeacherIndex.html', 'Index.html')
    return render_template(page)


@app.route('/student')
def student():
    response = request.cookies.get('WTF')
    page = app_server.cookie_checking_student(response, 'student/StudentIndex.html', 'Index.html')
    return render_template(page)


@app.route('/StuPasChange')
def stu_pas_change():
    response = request.cookies.get('WTF')
    page = app_server.cookie_checking_student(response, 'student/StuPasChange.html', 'Index.html')
    return render_template(page)


@app.route('/StuRentQuery')
def stu_rent_query():
    response = request.cookies.get('WTF')
    page = app_server.cookie_checking_student(response, 'student/StuRentQuery.html', 'Index.html')
    return render_template(page)


@app.route('/StuBookQuery')
def stu_book_query():
    response = request.cookies.get('WTF')
    page = app_server.cookie_checking_student(response, 'student/StuBookQuery.html', 'Index.html')
    return render_template(page)


@app.route('/StuSeeBookQuery')
def stu_see_book_query():
    response = request.cookies.get('WTF')
    page = app_server.cookie_checking_student(response, 'student/StuSeeBookQuery.html', 'Index.html')
    return render_template(page)


# 学生端登录检查
@app.route('/studentLogin', methods=['POST'])
def student_login():
    student_id = request.values.get('studentid')
    student_password = request.values.get('studentpassword')

    query = app_server.login_checking(student_id, student_password, 'student')

    if query == 'error' or query == 'none':
        return 'error'
    else:
        student_id = query[0]
        student_name = query[1]
        student_password = query[2]
        result = [student_id, student_name, student_password]
        return json.dumps(result)


# 学生修改密码
@app.route('/PostStuChangePas', methods=['POST'])
def post_stu_change_pas():
    studentId = request.values.get('studentId')
    OldPassword = request.values.get('OldPassword')
    NewPassword = request.values.get('NewPassword')
    try:
        is_student = app_server.login_checking(studentId, OldPassword, "student")
        # 如果原密码正确，那就修改密码
        if is_student == 'error':
            return 'error'
        elif is_student == 'none':
            return 'none'
        else:
            changepas = information_server.password_change(studentId, NewPassword, "student")
            if changepas == 'correct':
                return 'correct'
            elif changepas == 'error':
                return 'error'
    except Exception as e:
        print(e)
        return 'error'


# 查询学生看过的书籍
@app.route('/PostStuSeeBookQuery', methods=['POST'])
def post_stu_see_book_query():
    student_id = request.values.get('studentId')
    try:
        rents = information_server.show_see_book(student_id)
        list_rent = []
        for i in rents:
            map_rent = {"ISBN": i.ISBN, "book_name": i.book_name, "student_id": i.student_id, "student_name": i.student_name,
                        "begin_date": i.begin_date, "end_date": i.end_date}
            list_rent.append(map_rent)

        return json.dumps({"id": list_rent}, cls=information_server.DateEncoding)
    except Exception as e:
        print(e)
        return 'error'


# 查看正在借阅的书籍
@app.route('/postStuRentQuery', methods=['POST'])
def post_stu_rent_query():
    student_id = request.values.get('studentId')
    try:
        rents = information_server.show_rent_book(student_id)
        list_rent = []
        for i in rents:
            map_rent = {"ISBN": i.ISBN, "book_name": i.book_name, "student_id": i.student_id, "student_name": i.student_name,
                        "begin_date": i.begin_date, "end_date": i.end_date}
            list_rent.append(map_rent)

        return json.dumps({"id": list_rent}, cls=information_server.DateEncoding)
    except Exception as e:
        print(e)
        return 'error'


# 书目查询
@app.route('/PostStuBookQuery', methods=['POST'])
def post_stu_book_query():
    type_name = request.values.get('typeName')
    search_name = request.values.get('searchName')
    try:
        rents = information_server.all_book_query(type_name, search_name)
        list_rent = []
        for i in rents:
            if i.is_rent:
                is_rent = '不可借'
            else:
                is_rent = '可借'
            map_rent = {"ISBN": i.ISBN, "book_name": i.book_name, "author": i.author, "book_concern": i.book_concern,
                        "category": i.category, "location": i.location, "is_rent": is_rent}
            list_rent.append(map_rent)

        return json.dumps({"id": list_rent}, cls=information_server.DateEncoding)
    except Exception as e:
        print(e)
        return 'error'


# 管理员前端跳转部分
@app.route('/admin')
def teacher():
    response = request.cookies.get('WTF')
    page = app_server.cookie_checking_teacher(response, 'teacher/TeacherIndex.html', 'Index.html')
    return render_template(page)


@app.route('/AdmPasChange')
def adm_pas_change():
    response = request.cookies.get('WTF')
    page = app_server.cookie_checking_teacher(response, 'teacher/AdmPasChange.html', 'Index.html')
    return render_template(page)


@app.route('/LibraryCard')
def library_card():
    response = request.cookies.get('WTF')
    page = app_server.cookie_checking_teacher(response, 'teacher/LibraryCard.html', 'Index.html')
    return render_template(page)


@app.route('/BookBorrow')
def book_borrow():
    response = request.cookies.get('WTF')
    page = app_server.cookie_checking_teacher(response, 'teacher/BookBorrow.html', 'Index.html')
    return render_template(page)


@app.route('/BookReturn')
def book_return():
    response = request.cookies.get('WTF')
    page = app_server.cookie_checking_teacher(response, 'teacher/BookReturn.html', 'Index.html')
    return render_template(page)


@app.route('/BorrowInformation')
def borrow_information():
    response = request.cookies.get('WTF')
    page = app_server.cookie_checking_teacher(response, 'teacher/BorrowInformation.html', 'Index.html')
    return render_template(page)


@app.route('/NewBook')
def new_book():
    response = request.cookies.get('WTF')
    page = app_server.cookie_checking_teacher(response, 'teacher/NewBook.html', 'Index.html')
    return render_template(page)


@app.route('/BookInformation')
def book_information():
    response = request.cookies.get('WTF')
    page = app_server.cookie_checking_teacher(response, 'teacher/BookInformation.html', 'Index.html')
    return render_template(page)


# 管理员登录检查
@app.route('/adminLogin', methods=['POST'])
def teacher_login():
    teacher_id = request.values.get('teacherid')
    teacher_password = request.values.get('teacherpassword')
    query = app_server.login_checking(teacher_id, teacher_password, 'admin')

    if query == 'error' or query == 'none':
        return 'error'
    else:
        teacher_id = query[0]
        teacher_name = query[1]
        teacher_password = query[2]
        result = [teacher_id, teacher_name, teacher_password]
        return json.dumps(result)


# 教师修改密码
@app.route('/PostAdmPasChange', methods=['POST'])
def post_adm_pas_change():
    teacherId = request.values.get('teacherid')
    OldPassword = request.values.get('OldPassword')
    NewPassword = request.values.get('NewPassword')
    try:
        is_student = app_server.login_checking(teacherId, OldPassword, "admin")
        # 如果原密码正确，那就修改密码
        if is_student == 'error':
            return 'error'
        elif is_student == 'none':
            return 'none'
        else:
            changepas = information_server.password_change(teacherId, NewPassword, "admin")
            if changepas == 'correct':
                return 'correct'
            elif changepas == 'error':
                return 'error'
    except Exception as e:
        print(e)
        return 'error'


# 办理借书证
@app.route('/PostLibraryCard', methods=['POST'])
def post_library_card():
    student_id = request.values.get("studentId")
    student_name = request.values.get("studentName")
    college = request.values.get("college")
    major = request.values.get("major")
    phone = request.values.get("phone")
    note = request.values.get("note")
    gender = request.values.get("gender")
    password = request.values.get("password")
    try:
        result = information_server.register(student_id, password, student_name, gender, college, major, phone, note)
        return json.dumps({"id": result})
    except Exception as e:
        print(e)
        return 'error'


# 查询正在借阅的书籍
@app.route('/PostBookBorrow1', methods=['POST'])
def post_book_borrow1():
    student_id = request.values.get('studentId')
    try:
        rents = information_server.show_rent_book(student_id)
        list_rent = []
        for i in rents:
            map_rent = {"ISBN": i.ISBN, "book_name": i.book_name, "student_id": i.student_id, "student_name": i.student_name,
                        "begin_date": i.begin_date, "end_date": i.end_date}
            list_rent.append(map_rent)

        return json.dumps({"id": list_rent}, cls=information_server.DateEncoding)
    except Exception as e:
        print(e)
        return 'error'


# 借书操作
@app.route('/PostBookBorrow2', methods=['POST'])
def post_book_borrow2():
    ISBN = request.values.get('ISBN')
    student_id = request.values.get('studentId')
    try:
        result = information_server.book_borrow(ISBN, student_id)
        return json.dumps({"id": result})
    except Exception as e:
        print(e)
        return 'error'


# 查询正在借阅的书籍
@app.route('/PostBookReturn1', methods=['POST'])
def post_book_return1():
    student_id = request.values.get('studentId')
    try:
        rents = information_server.show_rent_book(student_id)
        list_rent = []
        for i in rents:
            map_rent = {"ISBN": i.ISBN, "book_name": i.book_name, "student_id": i.student_id, "student_name": i.student_name,
                        "begin_date": i.begin_date, "end_date": i.end_date}
            list_rent.append(map_rent)

        return json.dumps({"id": list_rent}, cls=information_server.DateEncoding)
    except Exception as e:
        print(e)
        return 'error'


# 还书操作
@app.route('/PostBookReturn2', methods=['POST'])
def post_book_return2():
    ISBN = request.values.get('ISBN')
    student_id = request.values.get('studentId')
    try:
        result = information_server.book_return(ISBN, student_id)
        return json.dumps({"id": result})
    except Exception as e:
        print(e)
        return 'error'


# 管理员端查询借阅信息
@app.route('/PostBorrowInformation', methods=['POST'])
def post_borrow_information():
    type_name = request.values.get('borrowTypeName')
    search_name = request.values.get('borrowSearchName')
    try:
        rents = information_server.all_rent_query(type_name, search_name)
        list_rent = []
        for i in rents:
            if i.is_return:
                is_return = '已归还'
            else:
                is_return = '借出'
            map_rent = {"ISBN": i.ISBN, "book_name": i.book_name, "student_id": i.student_id, "student_name": i.student_name,
                        "begin_date": i.begin_date, "end_date": i.end_date, "is_return": is_return}
            list_rent.append(map_rent)

        return json.dumps({"id": list_rent}, cls=information_server.DateEncoding)
    except Exception as e:
        print(e)
        return 'error'


# 新书录入
@app.route('/PostNewBook', methods=['POST'])
def post_new_book():
    ISBN = request.values.get("ISBN")
    book_name = request.values.get("bookName")
    author = request.values.get("author")
    book_concern = request.values.get("bookConcern")
    category = request.values.get("category")
    location = request.values.get("location")

    try:
        result = information_server.new_book(ISBN, book_name, author, book_concern, category, location)
        return json.dumps({"id": result})
    except Exception as e:
        print(e)
        return 'error'


# 管理员端查询图书信息
@app.route('/PostBookInformation', methods=['POST'])
def post_book_information():
    type_name = request.values.get('bookTypeName')
    search_name = request.values.get('bookSearchName')
    try:
        rents = information_server.all_book_query(type_name, search_name)
        list_rent = []
        for i in rents:
            if i.is_rent:
                is_rent = '不可借'
            else:
                is_rent = '可借'
            map_rent = {"ISBN": i.ISBN, "book_name": i.book_name, "author": i.author, "book_concern": i.book_concern,
                        "category": i.category, "location": i.location, "is_rent": is_rent}
            list_rent.append(map_rent)

        return json.dumps({"id": list_rent})
    except Exception as e:
        print(e)
        return 'error'


if __name__ == '__main__':
    app.run(debug=True, port="3326")
