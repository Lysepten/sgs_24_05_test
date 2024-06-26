<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="pageTitle" value="FAQ"></c:set>
<%@ include file="../common/head.jspf"%>

<style>
.writeBtn {
	background-color: #d5f1e2
}

.writeBtn:hover {
	background-color: #ededed;
	border: solid 1px #ededed;
}
</style>

</head>

<section class="mt-8 text-xl px-4">
	<div class="mx-auto overflow-x-auto">

		<div class="area-for-badge mx-auto"
			style="width: 50%; position: relative;">
			<div class="badge badge-outline" style="margin-bottom: 10px;">${faqCount }개</div>
		</div>

	</div>
	<table class="table-box-1 table mx-auto custom-table"
		style="width: 50%;">
		<colgroup>
			<col style="width: 8%" />
			<col style="width: 50%" />
			<col style="width: 10%" />
			<col style="width: 15%" />
			<col style="width: 5%" />
			<col style="width: 5%" />
			<col style="width: 5%" />
		</colgroup>
		<thead>
			<tr>
				<th style="background-color: #F2FBF6;">번호</th>
				<th style="text-align: center; background-color: #F2FBF6;">제목</th>
				<th style="background-color: #F2FBF6;">작성자</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach var="faq" items="${FAQ }">
				<tr class="hover">
					<td>${faq.id }</td>
					<td>${faq.question }</td>
					<td>${faq.answer }</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>

	<!-- 	동적 페이징 -->
	<div class="pagination flex justify-center mt-3"
		style="margin-top: 50px;">
		<c:set var="paginationLen" value="3" />
		<c:set var="startPage"
			value="${page -  paginationLen  >= 1 ? page - paginationLen : 1}" />
		<c:set var="endPage"
			value="${page +  paginationLen  <= pagesCount ? page + paginationLen : pagesCount}" />

		<c:set var="baseUri" value="?searchKeyword=${searchKeyword}" />

		<c:if test="${startPage > 1 }">
			<a class="btn btn-circle btn-ghost btn-xs"
				style="margin-left: 5px; margin-right: 5px;"
				href="${baseUri }&page=1">1</a>
			<button class="btn btn-xs btn-circle btn-disabled"
				style="margin-left: 5px; margin-right: 5px; background-color: #d5f1e2">...</button>
		</c:if>

		<c:forEach begin="${startPage }" end="${endPage }" var="i">
			<a
				class="btn btn-circle btn-ghost btn-xs ${param.page == i ? 'btn-active' : '' }"
				style="margin-left: 5px; margin-right: 5px; background-color: #d5f1e2"
				href="${baseUri }&page=${i }">${i }</a>
		</c:forEach>

		<c:if test="${endPage < pagesCount }">
			<button class="btn btn-xs btn-circle btn-disabled"
				style="margin-left: 5px; margin-right: 5px;">...</button>
			<a class="btn btn-circle btn-ghost btn-xs"
				style="margin-left: 5px; margin-right: 5px;"
				href="${baseUri }&page=${pagesCount }">${pagesCount }</a>
		</c:if>

	</div>


	<!-- 검색창 -->
	<div class="mb-4 flex justify-center" style="margin-top: 50px;">
		<div class="flex"></div>
		<form action="">
			<input value="${param.searchKeyword }" name="searchKeyword"
				type="text" placeholder="검색어를 입력해주세요"
				class="input-sm input input-bordered w-48 max-w-xs"
				style="margin-top: 5px;" />
			<button class="btn btn-ghost btn-sm" type="submit">검색</button>
		</form>
	</div>

</section>



<%@ include file="../common/foot.jspf"%>