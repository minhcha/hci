<%@ page pageEncoding="utf-8"%>
<form action="/account/login" method="post">
	<div class="panel panel-default" style="background-color: #ffffff; border-radius: 5%; padding: 5%">
		<div class="panel-heading" style=" background-color: white">
			<div class="text-danger pull-right"></div>
			<h4 class="panel-title" style=" background-color: white">ĐĂNG NHẬP</h4>
		</div>
		<div class="panel-body">
			<div class="form-group">
				 <input name="username" placeholder="Tên tài khoản" value="${username}"
					class="form-control" required="required" style="border-color: white; border-bottom-color: grey; background-color: white; color: black">
			</div>
			<div class="form-group">
				<input type="password" placeholder="Mật khẩu" name="password"
					value="${password}" class="form-control" required="required" style="border-color: white; border-bottom-color: grey; background-color: white; color: black">
			</div>
			<div class="form-group">
				<label> <input name="remember" type="checkbox" value="true"
					${empty username ? '' : 'checked'}> Ghi nhớ tài khoản ?
				</label>
			</div>
		</div>
		<div class="panel-footer text-right" style="background-color: white; height: 43px ; display: flex; justify-content: space-between ">
			<div class="pull-left text-danger">${message}${param.message}</div>
			<button class="btn btn-warning" style="width: 50%; height: 43px; background-color: dodgerblue; border-color: #E8E9EC; text-align: center; float: left">
				<span class="glyphicon glyphicon-user"></span> Đăng nhập
			</button>
            <div class="pull-right text-danger">${message}${param.message}</div>
            <a href="http://localhost:8081/account/register" class="btn btn-warning" style="width: 50%; height: 43px; background-color: #E8E9EC; border-color: #E8E9EC; text-align: center; float: left">
                <span class="glyphicon glyphicon-user"></span> Đăng kí
            </a>
		</div>
	</div>
</form>