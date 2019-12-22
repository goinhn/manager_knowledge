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



function newBook() {
    let ISBN = $("#new_ISBN").val();
    let bookName = $("#new_book_name").val();
    let author = $("#new_author").val();
    let bookConcern = $("#new_book_concern").val();
    let category = $("#new_category").val();
    let location = $("#new_location").val();
    postNewBook(ISBN, bookName, author, bookConcern, category, location);
}


function postNewBook(ISBN, bookName, author, bookConcern, category, location) {
    $.ajax({
        url: '/PostNewBook',
        type: 'POST',
        data: {
            ISBN: ISBN,
            bookName: bookName,
            author: author,
            bookConcern: bookConcern,
            category: category,
            location: location
        },
        dataType: 'json',
        success: function (data) {
            rents = data.id;
            if (rents == true){
                alert("录入成功");
            }else{
                alert("录入失败");
            }
        },
        error: function (err) {
            console.log(err)
        }
    })
}




