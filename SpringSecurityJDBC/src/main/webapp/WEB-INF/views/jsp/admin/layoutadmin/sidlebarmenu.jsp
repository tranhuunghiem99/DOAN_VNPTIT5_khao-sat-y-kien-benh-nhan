
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<div class="sidebar-content">
	<div class="sidebar-brand">
		<a href="#">Page của ${pageContext.request.userPrincipal.name}</a>
		<div id="close-sidebar">
			<i class="fas fa-times"></i>
		</div>
	</div>
	<div class="sidebar-header">
		<div class="user-pic">
			<img class="img-responsive img-rounded"
				src="https://raw.githubusercontent.com/azouaoui-med/pro-sidebar-template/gh-pages/src/img/user.jpg"
				alt="User picture">
		</div>
		<div class="user-info">
			<span class="user-name">Chao
				xìn!!!${pageContext.request.userPrincipal.name} </span> <span
				class="user-role">Administrator</span> <span class="user-status">
				<i class="fa fa-circle"></i> <span>Online</span>
			</span>
		</div>
	</div>
	<!-- sidebar-header  -->
	<div class="sidebar-search">
		<div>
			<div class="input-group">
				<input type="text" class="form-control search-menu"
					placeholder="Search...">
				<div class="input-group-append">
					<span class="input-group-text"> <i class="fa fa-search"
						aria-hidden="true"></i>
					</span>
				</div>
			</div>
		</div>
	</div>
	<!-- sidebar-search  -->
	<div class="sidebar-menu">
		<ul>
			<li class="header-menu"><span>General</span></li>
			<li class="sidebar-dropdown"><a class="nav-link active"
				href="#das" data-toggle="pill"> <i class="fa fa-tachometer-alt"></i>
					<span>Dashboard</span> <span class="badge badge-pill badge-warning">New</span>
			</a>
				<div class="sidebar-submenu">
					<ul class="nav nav-pills">

					</ul>
				</div></li>
			<li class="sidebar-dropdown"><a href="#"> <i
					class="fa fa-folder"></i> <span>Chức Năng</span> <span
					class="badge badge-pill badge-danger">3</span>
			</a>
				<div class="sidebar-submenu">
					<ul class="nav nav-pills">
						<li><a class="nav-link" data-toggle="pill" href="#user">Users
								Account </a></li>
						<li class="nav-item"><a class="nav-link" data-toggle="pill"
							href="#question">List Question</a></li>
						<li class="nav-item"><a class="nav-link " data-toggle="pill"
							href="#view-ks">Xem khảo Sát</a>
							
							</li>
						<li class="nav-item"><a class="nav-link " data-toggle="pill"
							href="#view-kqks">KQ KS</a></li>

					</ul>
				</div></li>

			<li class="sidebar-dropdown"><a href="#"> <i
					class="fa fa-chart-line"></i> <span>Charts</span>
			</a>
				<div class="sidebar-submenu">
					<ul>
						<li><a href="#view-kqks">Pie chart</a></li>
						<li><a href="#">Line chart</a></li>
						<li><a href="#">Bar chart</a></li>
						<li><a href="#">Histogram</a></li>
					</ul>
				</div></li>


		</ul>
	</div>
	<!-- sidebar-menu  -->
</div>
<!-- sidebar-content  -->
<div class="sidebar-footer">
	<a href="#"> <i class="fa fa-bell"></i> <span
		class="badge badge-pill badge-warning notification">3</span>
	</a> <a href="#"> <i class="fa fa-envelope"></i> <span
		class="badge badge-pill badge-success notification">7</span>
	</a> <a href="#"> <i class="fa fa-cog"></i> <span class="badge-sonar"></span>
	</a> <a href="<c:url value="/logout" />"
		onclick="return confirm('Bro có chắc là mốn Thoát ;:V ?');"> <i
		class="fa fa-power-off"></i>
	</a>

</div>

<!-- sidebar-wrapper  -->
