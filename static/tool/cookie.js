function set_cookie(name, value, time) {
    let exdate = new Date();
    exdate.setDate(exdate.getTime() + time * 24 * 3600 * 1000);
    document.cookie = name + '=' + encodeURI(value) + ';expires' + exdate.toGMTString();
}

function get_cookie(name) {
    var that = this;
    if (document.cookie.length > 0) {
        c_start = document.cookie.indexOf(name + '=');
        if (c_start != -1) {
            c_start = c_start + name.length + 1;
            c_end = document.cookie.indexOf(';', c_start);
            if (c_end == -1) {
                c_end = document.cookie.length;
            }
            return unescape(document.cookie.substring(c_start, c_end));
        }

    }
}

function del_cookie(name) {
    var date = new Date();
    date.setTime(date.getTime() - 10000)
    var that = this;
    if (document.cookie.length > 0) {
        var cookies = document.cookie.split(';');
        for (var i in cookies) {
            if (cookies[i].split('=')[0].trim() == name) {
                document.cookie = cookies[i] + ';expires=' + date.toGMTString();
            }
            //break;
        }
    }
}