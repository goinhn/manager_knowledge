# encoding:utf-8

import utils


# 登陆账号密码检查
def login_checking(user_id, password, user_type):
    try:
        if user_type == "admin":
            is_presence, result = utils.select_one("Admin", user_id)
            if is_presence and result.password == password:
                return result.admin_id, result.admin_name, result.password
            elif not is_presence:
                return "none"
            else:
                return "error"
        elif user_type == "student":
            is_presence, result = utils.select_one("Student", user_id)
            if is_presence and result.password == password:
                return result.student_id, result.student_name, result.password
            else:
                return "error"
        else:
            return "error"
    except Exception as e:
        print(e)
        return "error"


# 检查是否登录
def check_is_login(user_id, password, user_type):
    is_login = login_checking(user_id, password, user_type)
    if is_login == 'error' or is_login == 'none':
        return 'error'
    else:
        return user_type


# 登录时全部cookie检查
def cookie_checking_all(response, admin_page, student_page, error_page):
    if response is None:
        return error_page
    else:
        try:
            respondent = response.replace('%5B%22', '').replace('%20%22', '').replace('%22%5D', '').replace('%22', '').split(',')
            load_id = respondent[0]
            load_name = respondent[1]
            load_pwd = respondent[2]
            who = respondent[3]

            is_login = check_is_login(load_id, load_pwd, who)

            if is_login == 'error':
                return error_page
            elif is_login == 'student':
                return student_page
            elif is_login == 'admin':
                return admin_page
        except Exception as e:
            print(e)
            return error_page


# 学生是否登录cookie检查
def cookie_checking_student(response, correct_page, error_page):
    if response is None:
        return error_page
    else:
        try:
            responsent = response.replace('%5B%22', '').replace('%20%22', '').replace('%22%5D', '').replace('%22', '').split(',')
            load_id = responsent[0]
            load_name = responsent[1]
            load_password = responsent[2]
            who = responsent[3]
            is_login = check_is_login(load_id, load_password, who)
            if is_login == 'student':
                return correct_page
            else:
                return error_page
        except Exception as e:
            print(e)
            return error_page


# 管理员是否登录检查
def cookie_checking_teacher(response, correct_page, error_page):
    if response is None:
        return error_page
    else:
        try:
            responsent = response.replace('%5B%22', '').replace('%20%22', '').replace('%22%5D', '').replace('%22', '').split(',')
            load_id = responsent[0]
            load_name = responsent[1]
            load_password = responsent[2]
            who = responsent[3]
            is_login = check_is_login(load_id, load_password, who)
            if is_login == 'admin':
                return correct_page
            else:
                return error_page
        except Exception as e:
            print(e)
            return error_page


if __name__ == "__main__":
    pass
