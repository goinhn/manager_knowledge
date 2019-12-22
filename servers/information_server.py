# encoding:utf-8


import utils
import json
import datetime
from dateutil.relativedelta import relativedelta


# json时间序列化
class DateEncoding(json.JSONEncoder):
    def default(self, o):
        if isinstance(o, datetime.date):
            return o.strftime('%Y-%m-%d')


# 修改账号密码
def password_change(user_id, new_password, user_type):
    try:
        if user_type == "admin":
            result, number = utils.update_one("Admin", user_id, "password", new_password)
            if result:
                return "correct"
            else:
                return "error"
        elif user_type == "student":
            result, number = utils.update_one("Student", user_id, "password", new_password)
            if result:
                return "correct"
            else:
                return "error"
        else:
            return "error"
    except Exception as e:
        print(e)
        return "error"


# 查看已经看过的书籍
def show_see_book(student_id):
    is_rent = True
    result, rents = utils.show_see_rent_book(student_id, is_rent)
    return rents


# 查看正在借阅的书籍
def show_rent_book(student_id):
    is_rent = False
    result, rents = utils.show_see_rent_book(student_id, is_rent)
    return rents


# 书目信息查询
def all_book_query(type_name, search_name):
    result, rents = utils.show_query_all_book(type_name, search_name)
    return rents


# 借阅书籍查询
def all_rent_query(type_name, search_name):
    result, rents = utils.show_query_all_rent(type_name, search_name)
    return rents


# 注册
def register(student_id, password, student_name, gender, college, major, phone, note):
    result = utils.show_register(student_id, password, student_name, gender, college, major, phone, note)
    return result


# 新书
def new_book(ISBN, book_name, author, book_concern, category, location):
    result = utils.show_new_book(ISBN, book_name, author, book_concern, category, location)
    return result


# 借阅
def book_borrow(ISBN, student_id):
    result1, student_information = utils.select_one("Student", student_id)
    result2, ISBN_information = utils.select_one("Book", ISBN)
    result3, rent_information = utils.select_rent_book(ISBN)
    book_name = ISBN_information.book_name
    student_name = student_information.student_name
    begin_date = datetime.date.today()
    end_date = datetime.date.today() + relativedelta(months=+1)
    is_return = False
    is_rent = True
    book_number = student_information.book_number + 1

    if not result1 or not result2 or result3:
        return False
    else:
        if student_information.book_number >= 10:
            return False
        else:
            result = utils.show_book_borrow(ISBN, book_name, student_id, student_name, begin_date, end_date, is_return, is_rent,
                                            book_number)
            return result


# 还书
def book_return(ISBN, student_id):
    result1, student_information = utils.select_one("Student", student_id)
    result2, ISBN_information = utils.select_one("Book", ISBN)
    result3, rent_information = utils.select_rent_book(ISBN)
    is_return = True
    is_rent = False
    book_number = student_information.book_number - 1

    if not result1 or not result2 or not result3:
        return False
    else:
        if student_information.book_number <= 0:
            return False
        else:
            result = utils.show_book_return(ISBN, student_id, is_return, is_rent, book_number)
            return result


if __name__ == "__main__":
    pass
