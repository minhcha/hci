<%@ page pageEncoding="utf-8"%>
<%@ include file="/common/taglib.jsp"%>
<f:formatDate value="${prod.productDate}" pattern="dd-MM-yyyy"
	var="date" />
<f:formatNumber value="${prod.unitPrice}" pattern="#,###.00" var="price" />

<div class="panel panel-success nn-detail" data-id="${prod.id}" style="margin: 1%; padding: 1%; border-radius: 5%; background-color: #F4F9FD">
	<div class="panel-heading" style="background-color: #F4F9FD;">
		<h4 class="panel-title animate__animated animate__zoomIn" style="text-align: center; font-size: 20px; background-color: #F4F9FD; color: #032e50; text-transform: uppercase">${prod.name}</h4>
	</div>
	<div class="row" style="height: fit-content">
		<div class="text-center col-sm-6" style="width: 50%;height: 100%; margin: 0 auto; padding: 1%" >
			<img src="/static/images/products/${prod.image}" style="width: 100%; height: 100%; "/>
		</div>
		<div class="col-sm-6" style="padding: 1%">
			<div class="animate__animated animate__zoomInLeft" >
				<div style=" display: block;width: 100%; height: fit-content; background-color: white; box-shadow: 1px 1px 1px grey; border-radius: 5%; margin: auto;">
					<div style="padding: 3%; font-size: 16px"><strong>Đơn giá</strong>: <em style="float: right">${price}</em></div>
					<div style="padding: 3%; font-size: 16px"><strong>Giảm giá</strong>: <em style="float: right"><f:formatNumber value="${prod.discount}" type="percent"/></em></div>
					<div style="padding: 3%; font-size: 16px"><strong>Số lượng</strong>: <em style="float: right">${prod.quantity}</em></div>
					<div style="padding: 3%; font-size: 16px"><strong>Ngày mở bán</strong>: <em style="float: right">${date}</em></div>
					<div style="padding: 3%; font-size: 16px"><strong>Sẵn có</strong>: <em style="float: right">${prod.available}</em></div>
					<div style="padding: 3%; font-size: 16px"><strong>Loại</strong>: <em style="float: right">${prod.category.nameVN}</em></div>
					<div style="padding: 3%; font-size: 16px"><strong>Mô tả</strong>: <em style="text-align: justify; display: block;">${prod.description}</em></div>
				</div>
			</div>
		</div>
	</div>

	<div class="panel-footer text-right">
		<%@include file="btn-prod.jsp"%>
	</div>
</div>
<%@include file="dialog.jsp"%>
<jsp:include page="_comment.jsp"/>

<div class="nn-detail-relatives">
	<!-- tab buttons -->
	<ul class="nav nav-tabs">
		<li class="active"><a data-toggle="tab" href="#same">HÀNG
				CÙNG LOẠI</a></li>
		<li><a data-toggle="tab" href="#like">HÀNG YÊU THÍCH</a></li>
		<li><a data-toggle="tab" href="#daxem">HÀNG ĐÃ XEM</a></li>
	</ul>

	<div class="panel panel-default">
		<div class="panel-body">
			<!-- tab content -->
			<div class="tab-content">
				<div id="same" class="tab-pane fade in active">
					<c:forEach var="p" items="${prod.category.products}">
						<a href="/product/detail/${p.id}"><img
							src="/static/images/products/${p.image}" /></a>
					</c:forEach>
				</div>
				<div id="like" class="tab-pane fade">
					<c:forEach var="p" items="${like}">
						<a href="/product/detail/${p.id}"><img
							src="/static/images/products/${p.image}" /></a>
					</c:forEach>
				</div>
				<div id="daxem" class="tab-pane fade">
					<c:forEach var="p" items="${daXem}">
						<a href="/product/detail/${p.id}"><img
							src="/static/images/products/${p.image}" /></a>
					</c:forEach>
				</div>
			</div>
		</div>
	</div>
</div>




