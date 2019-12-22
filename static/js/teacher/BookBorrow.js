var TS = "";
$(function () {
    try {
        cookieContent = get_cookie('WTF');
        if (cookieContent == undefined) {
            alert('请先去登录');
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



function bookBorrow1() {
    $('.card-block table').append('');
    let studentId = $("#rent_student_id").val();
    $('.card-block table td').remove();
    postBookBorrow1(studentId);
}

function postBookBorrow1(studentId) {
    $.ajax({
        url: '/PostBookBorrow1',
        type: 'POST',
        data: {
            studentId: studentId,
        },
        dataType: 'json',
        success: function (data) {
            rents = data.id;
            for (let i = 0, len = rents.length; i < len; i++) {
                let ISBN = rents[i]["ISBN"];
                let book_name = rents[i]["book_name"];
                let student_id = rents[i]["student_id"];
                let student_name = rents[i]["student_name"];
                let begin_date = rents[i]["begin_date"];
                let end_date = rents[i]["end_date"];

                TS += "<tr>" +
                    "<td>" + ISBN + "</td>" +
                    "<td>" + book_name + "</td>" +
                    "<td>" + student_id + "</td>" +
                    "<td>" + student_name + "</td>" +
                    "<td>" + begin_date + "</td>" +
                    "<td>" + end_date + "</td>" +
                    "</tr>"
            }
            $('.card-block table').append(TS);
            TS = '';
        },
        error: function (err) {
            console.log(err)
        }
    })
}


function bookBorrow2() {
    $('.card-block table').append('');
    let ISBN = $("#rent_ISBN").val();
    let studentId = $("#rent_student_id").val();
    $('.card-block table td').remove();
    postBookBorrow2(ISBN, studentId);
}

function postBookBorrow2(ISBN, studentId) {
    $.ajax({
        url: '/PostBookBorrow2',
        type: 'POST',
        data: {
            ISBN: ISBN,
            studentId: studentId,
        },
        dataType: 'json',
        success: function (data) {
            rents = data.id;
            if (rents == true) {
                alert("借阅成功");
                postBookBorrow1(studentId)
            } else {
                alert("借阅失败");
                postBookBorrow1(studentId)
            }
        },
        error: function (err) {
            console.log(err)
        }
    })
}




