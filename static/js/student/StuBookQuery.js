var TS = '';
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
        document.getElementsByClassName('WelCome')[0].innerHTML = '欢迎' + studentName + '同学登录';
    } catch {
        window.location.href = '/';
    }
});

function search() {
    $('.card-block table').append('');
    let typeName = $("#type_name").val();
    let searchName = $("#search_name").val();
    $('.card-block table td').remove();
    postStuBookQuery(typeName, searchName)
}

function postStuBookQuery(typeName, searchName) {
    $.ajax({
        url: '/PostStuBookQuery',
        type: 'POST',
        data: {
            typeName: typeName,
            searchName: searchName
        },
        dataType: 'json',
        success: function (data) {
            rents = data.id;
            for (let i = 0, len = rents.length; i < len; i++) {
                let ISBN = rents[i]["ISBN"];
                let book_name = rents[i]["book_name"];
                let author = rents[i]["author"];
                let book_concern = rents[i]["book_concern"];
                let category = rents[i]["category"];
                let location = rents[i]["location"];
                let is_rent = rents[i]["is_rent"];

                TS += "<tr>" +
                    "<td>" + ISBN + "</td>" +
                    "<td>" + book_name + "</td>" +
                    "<td>" + author + "</td>" +
                    "<td>" + book_concern + "</td>" +
                    "<td>" + category + "</td>" +
                    "<td>" + location + "</td>" +
                    "<td>" + is_rent + "</td>" +
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

