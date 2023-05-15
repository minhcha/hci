<%@ page pageEncoding="utf-8"%>
<%@ include file="/common/taglib.jsp"%>
<div class="row text-center mb-5 probootstrap-animate" data-animate-effect="fadeIn">
	<div class="col-md-12" style="font-size: 30px; padding: 2%; font-family: Dosis">Gợi ý cho bạn</div>
</div>
<c:forEach var="p" items="${list}">
	<div class="col-md-4 col-sm-6 nn-prod animate__animated animate__bounceIn" data-id="${p.id}">
		<div class="panel panel-success" style="box-shadow: 1px 1px 1px grey;">
			<div class="panel-body text-center">
				<a href="/product/detail/${p.id}"><img src="/static/images/products/${p.image}"/></a>
			</div>
			<div class="panel-footer">
				<h4 class="text-center" style="text-align: center; font-family: 'Times New Roman';">${p.name}</h4>
				<div class="text-center" style="padding: 1%">${p.unitPrice} $</div>
				<div class="row text-center" style="padding: 1%">
					<div class="text-center">
						<%@include file="btn-prod.jsp" %>
					</div>
				</div>
			</div>
			<c:choose>
				<c:when test="${p.discount > 0}">
					<img src="/static/images/promo-icon.gif"/>
				</c:when>
				<c:when test="${p.available}">
					<img src="/static/images/special-icon.gif"/>
				</c:when>
			</c:choose>
		</div>
	</div>
</c:forEach>
<%@include file="dialog.jsp" %>

