# coding:utf-8

from manage import *


# 管理员
class Admin(db.Model):
    __tablename__ = 'admin'
    admin_id = db.Column(db.String(32), primary_key=True, index=True)
    password = db.Column(db.String(32), nullable=False, default=admin_id)
    admin_name = db.Column(db.String(32), nullable=False)
    gender = db.Column(db.String(5))
    phone = db.Column(db.String(32))
    note = db.Column(db.String(64))

    def __str__(self):
        return 'admin_id:%s, admin_name:%s， gender:%s, phone:%s, note:%s' % (
            self.admin_id, self.admin_name, self.gender, self.phone, self.note)


# 学生
class Student(db.Model):
    __tablename__ = 'student'
    student_id = db.Column(db.String(32), primary_key=True, index=True)
    password = db.Column(db.String(32), nullable=False, default=student_id)
    student_name = db.Column(db.String(32), nullable=False)
    gender = db.Column(db.String(5))
    college = db.Column(db.String(32))
    major = db.Column(db.String(32))
    phone = db.Column(db.String(32))
    book_number = db.Column(db.Integer, default=0)
    note = db.Column(db.String(64))

    def __str__(self):
        return 'student_id:%s, student_name:%s, gender:%s, college:%s, major:%s, phone:%s, note:%s' % (
            self.student_id, self.student_name, self.gender, self.college, self.major, self.phone, self.note)


# 书本
class Book(db.Model):
    __tablename__ = 'book'
    ISBN = db.Column(db.String(64), primary_key=True, index=True)
    book_name = db.Column(db.String(32), nullable=False)
    author = db.Column(db.String(32))
    book_concern = db.Column(db.String(32))
    category = db.Column(db.String(32))
    location = db.Column(db.String(32))
    is_rent = db.Column(db.Boolean, default=True)

    def __str__(self):
        return 'ISBN:%s, book_name:%s, author:%s, book_concern:%s, category:%s, location:%s, is_rent:%s' % (
            self.ISBN, self.book_name, self.author, self.book_concern, self.category, self.location, self.is_rent)


# 租借情况
class Rent(db.Model):
    __tablename__ = 'rent'
    id = db.Column(db.Integer, primary_key=True, autoincrement=True)
    ISBN = db.Column(db.String(32), db.ForeignKey('book.ISBN'), index=True)
    book_name = db.Column(db.String(32), nullable=False)
    student_id = db.Column(db.String(32), db.ForeignKey('student.student_id'), nullable=False, index=True)
    student_name = db.Column(db.String(32), nullable=False)
    begin_date = db.Column(db.Date, nullable=False)
    end_date = db.Column(db.Date, nullable=False)
    is_return = db.Column(db.Boolean, nullable=False, default=False)

    def __str__(self):
        return 'ISBN:%s, book_name:%s, student_id:%s, student_name:%s, begin_date:%s, end_date:%s, is_return:%s' % (
            self.ISBN, self.book_name, self.student_id, self.student_name, self.begin_date, self.end_date,
            self.is_return)


# 创建表设置
# @app.route('/')
# def create_tables():
#     db.drop_all()
#     db.create_all()
#     return 'table_success'
#
#
# if __name__ == '__main__':
#     app.run(debug=True)
