<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%-- <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> --%>
<%-- <c:set var="pageTitle" value="MAIN"></c:set> --%>
<%-- <%@ include file="../common/head.jspf"%> --%>

<div>
hi
</div>

<script>
async function getData() {
	const API_KEY = '%2FuVHLtR1PUUwIJ5atClfZHJpP0c2IW%2F5lh9m%2FLQ0IK5BNHX0YKtAZpsU5OFjJyGgh8II4ExW6qiwi7h3cMP8Qg%3D%3D';
	const url = 'apis.data.go.kr/6300000/openapi2022/tourspot';
	const response = await fetch(url);
	const data = await response.json();
	console.log("data", data);
}

getData();
</script>