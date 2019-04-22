<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%
	String cp=request.getContextPath();
%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
		<script type="text/javascript" src="<%=cp%>/resource/jquery/js/jquery-1.12.4.min.js"></script>
		<script type="text/javascript">
			$(function(){
				$("#btnOk").click(function(){
					var url = "http://211.238.142.187:9090/ps1/user/data";
					var query = "id=java";
					
					$.ajax({
						url:url,
						data:query,
						dataType:"jsonp", // jsonp : 원격 스크립트 지원 (json과 유사)
						//jsonp:"callback", //jsonp를 처리할 파라미터명이 callback이 아닌 경우 파라미터명을 지정해야함(default : callback)
						success:function(data) {
							var s = data.id + ":" + data.name + ":" + data.age + ":" + data.result;
							$("#resultLayout").html(s);
						},
						error:function(e) {
							console.log(e.responseText);
						}
					});
				});
			});
		</script>
	</head>
	<body>
		<h3>JSONP 예제</h3>
		<div>
			<button type="button" id="btnOk">확인</button>
		</div>
		<div id="resultLayout"></div>
	</body>
</html>