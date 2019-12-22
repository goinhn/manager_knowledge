var Auth = {
	vars: {
		lowin: document.querySelector('.lowin'), //整个登录页面
		lowin_brand: document.querySelector('.lowin-brand'),
		lowin_wrapper: document.querySelector('.lowin-wrapper'),
		lowin_login: document.querySelector('.lowin-login'),
		lowin_wrapper_height: 0,
		login_back_link: document.querySelector('.login-back-link'),
		forgot_link: document.querySelector('.forgot-link'),
		login_link: document.querySelector('.login-link'),
		login_btn: document.querySelector('.login-btn'),
		register_link: document.querySelector('.register-link'),
		password_group: document.querySelector('.password-group'),
		password_group_height: 0,
		lowin_register: document.querySelector('.lowin-register'),
		lowin_footer: document.querySelector('.lowin-footer'),
		box: document.getElementsByClassName('lowin-box'),
		option: {},
		inputpwd :document.querySelector('input[type="password"]')
	},
	register(e) {
		Auth.vars.lowin_login.className += ' lowin-animated';
		setTimeout(() => {
			Auth.vars.lowin_login.style.display = 'none';
		}, 500);
		Auth.vars.lowin_register.style.display = 'block';
		Auth.vars.lowin_register.className += ' lowin-animated-flip';

		Auth.setHeight(Auth.vars.lowin_register.offsetHeight + Auth.vars.lowin_footer.offsetHeight);

		e.preventDefault();
	},
	login(e) {
		Auth.vars.lowin_register.classList.remove('lowin-animated-flip');
		Auth.vars.lowin_register.className += ' lowin-animated-flipback';
		Auth.vars.lowin_login.style.display = 'block';
		Auth.vars.lowin_login.classList.remove('lowin-animated');
		Auth.vars.lowin_login.className += ' lowin-animatedback';
		setTimeout(() => {
			Auth.vars.lowin_register.style.display = 'none';
		}, 500);

		setTimeout(() => {
			Auth.vars.lowin_register.classList.remove('lowin-animated-flipback');
			Auth.vars.lowin_login.classList.remove('lowin-animatedback');
		}, 1000);

		Auth.setHeight(Auth.vars.lowin_login.offsetHeight + Auth.vars.lowin_footer.offsetHeight);
		e.preventDefault();
	},
	forgot(e) {
		Auth.vars.password_group.classList += ' lowin-animated';
		Auth.vars.login_back_link.style.display = 'block';

		setTimeout(() => {
			Auth.vars.login_back_link.style.opacity = 1;
			Auth.vars.password_group.style.height = 0;
			Auth.vars.password_group.style.margin = 0;
		}, 100);

		Auth.vars.login_btn.innerText = '找回密码';
		Auth.setHeight(Auth.vars.lowin_wrapper_height - Auth.vars.password_group_height);
		Auth.vars.inputpwd.style.display='none';
		Auth.vars.login_btn.setAttribute('onclick', 'find_password()')
		//Auth.vars.lowin_login.querySelector('form').setAttribute('action', Auth.vars.option.forgot_url);
		e.preventDefault();
	},
	loginback(e) {
		Auth.vars.password_group.classList.remove('lowin-animated');
		Auth.vars.password_group.classList += ' lowin-animated-back';
		Auth.vars.password_group.style.display = 'block';

		setTimeout(() => {
			Auth.vars.login_back_link.style.opacity = 0;
			Auth.vars.password_group.style.height = Auth.vars.password_group_height + 'px';
			Auth.vars.password_group.style.marginBottom = 30 + 'px';
		}, 100);

		setTimeout(() => {
			Auth.vars.login_back_link.style.display = 'none';
			Auth.vars.password_group.classList.remove('lowin-animated-back');
		}, 1000);

		Auth.vars.login_btn.innerText = '登录';
		Auth.vars.login_btn.removeAttribute('onclick')
		Auth.vars.inputpwd.style.display='block';
		Auth.vars.login_btn.setAttribute('onclick', 'login_button()')
		//Auth.vars.lowin_login.querySelector('form').setAttribute('action', Auth.vars.option.login_url);

		Auth.setHeight(Auth.vars.lowin_wrapper_height);

		e.preventDefault();
	},
	setHeight(height) {
		Auth.vars.lowin_wrapper.style.minHeight = height + 'px';
	},
	brand() {
		Auth.vars.lowin_brand.classList += ' lowin-animated';
		setTimeout(() => {
			Auth.vars.lowin_brand.classList.remove('lowin-animated');
		}, 1000);
	},
	init(option) {
		Auth.setHeight(Auth.vars.box[0].offsetHeight + Auth.vars.lowin_footer.offsetHeight);

		Auth.vars.password_group.style.height = Auth.vars.password_group.offsetHeight + 'px';
		Auth.vars.password_group_height = Auth.vars.password_group.offsetHeight;
		Auth.vars.lowin_wrapper_height = Auth.vars.lowin_wrapper.offsetHeight;

		Auth.vars.option = option;

		var len = Auth.vars.box.length - 1;

		for (var i = 0; i <= len; i++) {
			if (i !== 0) {
				Auth.vars.box[i].className += ' lowin-flip';
			}
		}

		Auth.vars.forgot_link.addEventListener("click", (e) => {
			Auth.forgot(e);
		});

		Auth.vars.register_link.addEventListener("click", (e) => {
			Auth.brand();
			Auth.register(e);
		});

		Auth.vars.login_link.addEventListener("click", (e) => {
			Auth.brand();
			Auth.login(e);
		});

		Auth.vars.login_back_link.addEventListener("click", (e) => {
			Auth.loginback(e);
		});
		//找回密码
	}
};


// 管理员登录数据检查
function teacher_login() {
	const teacherBox = $('.lowin-box-inner')[1];
	const teahcherContent = teacherBox.childNodes;
	const teacherid = teahcherContent[3].childNodes[3].value;
	const teacherpassword = teahcherContent[5].childNodes[3].value;
	if(teacherid === ''||teacherpassword === ''){
		alert('参数不能为空');
	}
	$.ajax({
		url:'/adminLogin',
		type:'POST',
		data:{
		teacherid:teacherid,
		teacherpassword:teacherpassword
		},
		success:function(data){
			if(data.toString() === 'error'){
				alert('账号或密码错误');
			}else{
				data = data + ',admin';
				set_cookie('WTF',data,1);
				window.location.href='admin';
			}
			
		},
		error:function(err){
			console.log(err);
		}
	})
}


// 学生登录数据交互
function student_login() {
	const studentBox = $('.lowin-box-inner')[0];
	const studentContent = studentBox.childNodes;
	const studentid = studentContent[3].childNodes[3].value;
	const studentpassword = studentContent[5].childNodes[3].value;
	if(studentid === ''||studentpassword === ''){
		alert('参数不能为空');
	}
	$.ajax({
		url:'/studentLogin',
		type:'POST',
		data:{
		studentid:studentid,
		studentpassword:studentpassword
		},
		success:function(data){
			if(data.toString() === 'error'){
				alert('账号或密码错误');
			}else{
				data = data +',student';
				set_cookie('WTF',data,1);
				window.location.href='student';
			}
			
		},
		error:function(err){
			console.log(err);
		}
	})
}


// 退出时清除cookie
function btn_primary(){
	del_cookie('WTF');
	window.location.href='/';
}
