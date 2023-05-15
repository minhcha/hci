<%@ page pageEncoding="utf-8"%>
<%@ include file="/common/taglib.jsp" %>
<nav class="navbar navbar-default bg-main text-main" style="background:#ff685f; ">
	<div class="container-fluid">
		<div class="row">
			<div class="col-md-4 col-sm-12 left-rs">
				<div class="navbar-header" style="width: 100px;height: 60px" >
					<a href="/home/index" class="navbar-brand" style="width: 100%;height: 100%;padding: 0; margin-left: 0"><img src="/static/images/logo_main.png" alt="" style="height: 100%; width: 100%; object-fit: cover"/></a>
				</div>
				<form class="navbar-form navbar-left web-sh">
					<div class="form" style="color: white ;display: flex; align-content: center; justify-items: center">
<%--						<i class="fa-solid fa-magnifying-glass" style="display: table-cell;line-height: 100%"></i>--%>
						<input type="text" class="form-control input-searchProduct" style="padding: 5px 10px" placeholder="Tìm kiếm sản phẩm...">
					</div>
				</form>
			</div>
			<div class="col-md-8 col-sm-12">
				<div class="right-nav">
					<div class="login-sr">
						<div class="login-signup">
							<ul>
								<li><a href="/account/login" style="color: white;font-weight: bold;font-size: 16px">Login</a></li>
								<li><a class="custom-b" href="/account/register" style="color: white;font-weight: bold;font-size: 16px; background:black">Sign up</a></li>
							</ul>
						</div>
					</div>

					<div class="nav-b hidden-xs">
						<div class="nav-box">
							<ul class="list-menu-main">
								<li><a href="/home/about" style="color: white;font-weight: bold;font-size: 16px;padding-right: 3px;padding-left: 3px">Về chúng tôi</a></li>
								<li><a href="/home/contact" style="color: white;font-weight: bold;font-size: 16px;padding-right: 3px;padding-left: 3px">Liên hệ</a></li>
								<li><a href="/home/feedback" style="color: white;font-weight: bold;font-size: 16px;padding-right: 3px;padding-left: 3px">Phản hồi</a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!--/.container-fluid -->
</nav>




<%--<nav class="navbar-inverse" >--%>
<%--	<div class="container-fluid">--%>
<%--		<div class="navbar-header">--%>
<%--			<button class="navbar-toggle" data-toggle="collapse" data-target="#menu">--%>
<%--				<span class="icon-bar"></span>--%>
<%--				<span class="icon-bar"></span>--%>
<%--				<span class="icon-bar"></span>--%>
<%--			</button>--%>
<%--			<a class="navbar-brand" href="/home/index"><span class="glyphicon glyphicon-home"></span>Trang chủ</a>--%>
<%--		</div>--%>
<%--		<div class="collapse navbar-collapse" id="menu">--%>
<%--			<ul class="nav navbar-nav">--%>
<%--				 <li><a href="/home/about"><span class="glyphicon glyphicon-info-sign"></span>Về chúng tôi</a></li>--%>
<%--				 <li><a href="/home/contact"><span class="glyphic	on glyphicon-phone-alt"></span> Liên hệ</a></li>--%>
<%--				 <li><a href="/home/feedback"><span class="glyphicon glyphicon-envelope"></span> Phản hồi</a></li>--%>
<%--				 <li class="dropdown">--%>
<%--					<a class="dropdown-toggle" data-toggle="dropdown" href="#"> --%>
<%--						<span class="glyphicon glyphicon-user"></span>--%>
<%--						<span class="caret"></span>--%>
<%--					</a>--%>
<%--					<ul class="dropdown-menu">--%>
<%--						<c:choose>--%>
<%--							<c:when test="${empty sessionScope.user}">--%>
<%--								<li><a href="/account/login">Đăng nhập</a></li>--%>
<%--								<li><a href="/account/forgot">Quên mật khẩu</a></li>--%>
<%--								<li><a href="/account/register">Đăng kí</a></li>							--%>
<%--							</c:when>--%>
<%--							<c:otherwise>--%>
<%--								<li><a href="/account/logoff">Đăng xuất</a></li>--%>
<%--								<li><a href="/account/change">Thay đổi mật khẩu</a></li>--%>
<%--								<li><a href="/account/edit">Chỉnh sửa thông tin</a></li>--%>
<%--								<li class="divider"></li>--%>
<%--								<li><a href="/order/list">Đơn hàng</a></li>--%>
<%--								<li><a href="/order/items">Mặt hàng đã mua</a></li>--%>
<%--								<c:if test="${sessionScope.user.admin}">--%>
<%--									<li class="divider"></li>--%>
<%--									<li><a href="/admin/home/index">Trang Admin</a></li>--%>
<%--								</c:if>					--%>
<%--							</c:otherwise>--%>
<%--						</c:choose>--%>
<%--					</ul>--%>
<%--				</li>--%>
<%--			</ul>--%>
<%--		</div>--%>
<%--	</div>--%>
<%--</nav>--%>


