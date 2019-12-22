from flask import Flask, render_template, redirect, request, jsonify
from flask_sqlalchemy import SQLAlchemy

app = Flask(__name__)

# 设置连接数据库
app.config['SQLALCHEMY_DATABASE_URI'] = 'mysql://root:fwz@127.0.0.1:3306/librarydbms'

# 设置每次请求结束后会自动提交数据库中的改动
app.config['SQLALCHEMY_COMMIT_ON_TEARDOWN'] = True

# 设置成 True，SQLAlchemy 将会追踪对象的修改并且发送信号。这需要额外的内存， 如果不必要的可以禁用它。
app.config['SQLALCHEMY_TRACK_MODIFICATIONS'] = True

# 实例化SQLAlchemy对象
db = SQLAlchemy(app)
