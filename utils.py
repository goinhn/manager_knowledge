# encoding:utf-8

from models import db, Admin, Student, Book, Rent
from sqlalchemy import and_, or_, not_


# 输出全表
def select_all(table_name):
    try:
        if table_name == Admin.__name__:
            result = Admin.query.all()
            return True, result
        elif table_name == Student.__name__:
            result = Student.query.all()
            return True, result
        elif table_name == Book.__name__:
            result = Book.query.all()
            return True, result
        elif table_name == Rent.__name__:
            result = Rent.query.all()
            return True, result
        else:
            return False, []
    except Exception as e:
        print(e)
        return False, []


# 根据单个值查询表
def select_one(table_name, key_name):
    try:
        if table_name == Admin.__name__:
            result = Admin.query.filter(Admin.admin_id == key_name).first()
            return True, result
        elif table_name == Student.__name__:
            result = Student.query.filter(Student.student_id == key_name).first()
            return True, result
        elif table_name == Book.__name__:
            result = Book.query.filter(Book.ISBN == key_name).first()
            return True, result
        else:
            return False, []
    except Exception as e:
        print(e)
        return False, []


# 修改单个值
def update_one(table_name, key_name, change_name, change_value):
    try:
        if table_name == Admin.__name__:
            result = Admin.query.filter(Admin.admin_id == key_name).update({change_name: change_value})
            return True, result
        elif table_name == Student.__name__:
            result = Student.query.filter(Student.student_id == key_name).update({change_name: change_value})
            return True, result
        elif table_name == Book.__name__:
            result = Book.query.filter(Book.ISBN == key_name).update({change_name: change_value})
            return True, result
        else:
            return False, 0
    except Exception as e:
        print(e)
        return False, 0


# 插入管理员记录
def insert_admin(admin_id, password, admin_name, gender, phone, note):
    try:
        admin = Admin(admin_id=admin_id, password=password, admin_name=admin_name, gender=gender, phone=phone,
                      note=note)
        db.session.add(admin)
        db.session.commit()
        return True
    except Exception as e:
        print(e)
        return False


# 插入学生记录
def insert_student(student_id, password, student_name, gender, college, major, phone, book_number, note):
    try:
        student = Student(student_id=student_id, password=password, student_name=student_name, gender=gender,
                          college=college, major=major, phone=phone, book_number=book_number, note=note)
        db.session.add(student)
        db.session.commit()
        return True
    except Exception as e:
        print(e)
        return False


# 插入书本记录
def insert_book(ISBN, book_name, author, book_concern, category, location, is_rent):
    try:
        book = Book(ISBN=ISBN, book_name=book_name, author=author, book_concern=book_concern, category=category,
                    location=location, is_rent=is_rent)
        db.session.add(book)
        db.session.commit()
        return True
    except Exception as e:
        print(e)
        return False


# 插入租借记录
def insert_rent(ISBN, book_name, student_id, student_name, begin_date, end_date, is_return):
    try:
        rent = Rent(ISBN=ISBN, book_name=book_name, student_id=student_id, student_name=student_name,
                    begin_date=begin_date, end_begin=end_date, is_return=is_return)
        db.session.add(rent)
        db.session.commit()
        return True
    except Exception as e:
        print(e)
        return False


# 删除管理员记录
def delete_admin(admin_id):
    try:
        admin = Admin.query.filter_by(admin_id=admin_id).first()
        db.session.delete(admin)
        db.session.commit()
        return True
    except Exception as e:
        print(e)
        return False


# 删除学生记录
def delete_student(student_id):
    try:
        student = Student.query.filter_by(student_id=student_id).first()
        db.session.delete(student)
        db.session.commit()
        return True
    except Exception as e:
        print(e)
        return False


# 删除书本记录
def delete_book(ISBN):
    try:
        book = Book.query.filter_by(ISBN=ISBN).first()
        db.session.delete(book)
        db.session.commit()
        return True
    except Exception as e:
        print(e)
        return False


# 查询某个学生借阅记录
def show_see_rent_book(student_id, is_rent):
    try:
        rents = Rent.query.filter(and_(Rent.student_id == student_id, Rent.is_return == is_rent)).all()
        return True, rents
    except Exception as e:
        print(e)
        return False, []


# 查询所有的书本
def show_query_all_book(type_name, search_name):
    try:
        query = '%' + search_name + '%'
        if type_name == 'ISBN':
            result = Book.query.filter(Book.ISBN.like(query)).all()
            return True, result
        elif type_name == 'book_name':
            result = Book.query.filter(Book.book_name.like(query)).all()
            return True, result
        elif type_name == 'author':
            result = Book.query.filter(Book.author.like(query)).all()
            return True, result
        elif type_name == 'book_concern':
            result = Book.query.filter(Book.book_concern.like(query)).all()
            return True, result
        elif type_name == 'category':
            result = Book.query.filter(Book.category.like(query)).all()
            return True, result
        else:
            return False, []
    except Exception as e:
        print(e)
        return False, []


# 查询借阅的记录
def show_query_all_rent(type_name, search_name):
    try:
        query = '%' + search_name + '%'
        if type_name == 'ISBN':
            result = Rent.query.filter(Rent.ISBN.like(query)).all()
            return True, result
        elif type_name == 'book_name':
            result = Rent.query.filter(Rent.book_name.like(query)).all()
            return True, result
        elif type_name == 'student_id':
            result = Rent.query.filter(Rent.student_id.like(query)).all()
            return True, result
        elif type_name == 'student_name':
            result = Rent.query.filter(Rent.student_name.like(query)).all()
            return True, result
        else:
            return False, []
    except Exception as e:
        print(e)
        return False, []


# 写入注册的学生信息
def show_register(student_id, password, student_name, gender, college, major, phone, note):
    result = insert_student(student_id, password, student_name, gender, college, major, phone, 0, note)
    return result


# 写入新书的信息
def show_new_book(ISBN, book_name, author, book_concern, category, location):
    result = insert_book(ISBN, book_name, author, book_concern, category, location, False)
    return result


# 借阅
def show_book_borrow(ISBN, book_name, student_id, student_name, begin_date, end_date, is_return, is_rent, book_number):
    try:
        db.session.begin(subtransactions=True)
        rent = Rent(ISBN=ISBN, book_name=book_name, student_id=student_id, student_name=student_name,
                    begin_date=begin_date, end_date=end_date, is_return=is_return)
        number1 = Student.query.filter(Student.student_id == student_id).update({"book_number": book_number})
        number2 = Book.query.filter(Book.ISBN == ISBN).update({"is_rent": is_rent})
        db.session.add(rent)
        db.session.commit()
        return True
    except Exception as e:
        db.session.rollback()
        print(e)
        return False


# 查询该书是否换了
def select_rent_book(ISBN):
    try:
        db.session.begin(subtransactions=True)
        result = Rent.query.filter(and_(Rent.ISBN == ISBN, Rent.is_return == False)).first()
        db.session.commit()
        if result is None:
            return False, []
        else:
            return True, result
    except Exception as e:
        db.session.rollback()
        print(e)
        return False, []


# 还书
def show_book_return(ISBN, student_id, is_return, is_rent, book_number):
    try:
        db.session.begin(subtransactions=True)
        number1 = Student.query.filter(Student.student_id == student_id).update({"book_number": book_number})
        number2 = Book.query.filter(Book.ISBN == ISBN).update({"is_rent": is_rent})
        number3 = Rent.query.filter(Rent.ISBN == ISBN).update({"is_return": is_return})
        db.session.commit()
        return True
    except Exception as e:
        db.session.rollback()
        print(e)
        return False


if __name__ == '__main__':
    pass
