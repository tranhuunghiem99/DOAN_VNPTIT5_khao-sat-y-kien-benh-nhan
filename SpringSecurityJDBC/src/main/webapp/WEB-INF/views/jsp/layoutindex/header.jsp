<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<meta charset="UTF-8">
<title>Insert title here</title>
<nav class="navbar navbar-expand-lg navbar-light bg-light" style="">
	<a class="navbar-brand" href="#">HOME</a> <a class="nav-link" href="#">Khảo
		Sát<span class="sr-only">(current)</span>
	</a>
	<div class="collapse navbar-collapse" id="navbarSupportedContent">
		<ul class="navbar-nav mr-auto">

			<li class="nav-item"><button id="logininput"
					onclick="document.getElementById('id01').style.display='block'"
					style="width: auto;">Đăng Nhập</button>

				<div id="id01" class="modal">

					<form class="modal-content animate" name='loginForm'
						action="<c:url value='j_spring_security_login' />" method='POST'>
						<div class="imgcontainer">
							<span
								onclick="document.getElementById('id01').style.display='none'"
								class="close" title="Close Modal">&times;</span> <img
								src="https://www.w3schools.com/howto/img_avatar2.png"
								alt="Avatar" class="avatar">
						</div>

						<div class="container">
							<label for="uname"><b>Username</b></label> <input type='text'
								name='username' placeholder="Enter Username" required> <label
								for="psw"><b>Password</b></label> <input type='password'
								name='password' placeholder="Enter Password" required> <input
								id="logininput" name="submit" type="submit" value="Đăng Nhập" />
							<input type="hidden" name="${_csrf.parameterName}"
								value="${_csrf.token}" /> <label> <input
								type="checkbox" checked="checked" name="remember">
								Remember me
							</label>
						</div>

						<div class="container" style="background-color: #f1f1f1">
							<button type="button"
								onclick="document.getElementById('id01').style.display='none'"
								class="btn btn-danger">Cancel</button>
							<span class="psw">Forgot <a href="#">password?</a></span>
						</div>
					</form></li>
			<li class="nav-item"></li>
		</ul>
		<form class="form-inline my-2 my-lg-0">
			<input class="form-control mr-sm-2" type="text" placeholder="Search"
				aria-label="Search">
			<button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
		</form>
	</div>
</nav>