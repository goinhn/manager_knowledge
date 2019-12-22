$(function () {
    try {
        cookieContent = get_cookie('WTF');
        if (cookieContent == undefined) {
            alert('请先去登录')
            window.location.href = '/'
        }
        cookieContent = cookieContent.replace('[', '').replace(']', '').replace(/"/g, '').split(',');
        studentName = $.trim(cookieContent[1]);
        studentId = $.trim(cookieContent[0])
        document.getElementsByClassName('WelCome')[0].innerHTML = '欢迎' + studentName + '管理员登录';
    } catch {
        window.location.href = '/';
    }
});


function register() {
    let studentId = $("#card_student_id").val();
    let studentName = $("#card_student_name").val();
    let college = $("#card_college").val();
    let major = $("#card_major").val();
    let phone = $("#card_phone").val();
    let note = $("#card_note").val();
    let gender = $("#card_gender").val();
    let password = $("#card_password").val();
    let two_password = $("#card_two_password").val();

    if (password == two_password) {
        postLibraryCard(studentId, studentName, college, major, phone, note, gender, password);
    } else {
        alert("this is error password!");
    }
}


function postLibraryCard(studentId, studentName, college, major, phone, note, gender, password) {
    $.ajax({
        url: '/PostLibraryCard',
        type: 'POST',
        data: {
            studentId: studentId,
            studentName: studentName,
            college: college,
            major: major,
            phone: phone,
            note: note,
            gender: gender,
            password: password
        },
        dataType: 'json',
        success: function (data) {
            rents = data.id;
            if (rents == true){
                alert("注册成功");
            }else{
                alert("注册失败");
            }
        },
        error: function (err) {
            console.log(err)
        }
    })
}



