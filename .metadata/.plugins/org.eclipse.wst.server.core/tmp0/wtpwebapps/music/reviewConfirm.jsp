<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>レビュー確認画面</title>
</head>
<body>
<jsp:include page="header.jsp" />
<div id="review-contents">
<h1>レビュー確認画面</h1>
<form method="POST" action="ReviewCompleteAction">
<% request.setCharacterEncoding("UTF-8"); %>
<p>レビューの内容はこちらでよろしいでしょうか？</p>

<div>
<label>タイトル</label>
<br>
<%=request.getParameter("title") %>
</div>

<br>
<label>評価</label>
<br>
<script type="text/javascript">
 for(var a = 1; a <=<%=request.getParameter("star") %>; a++){
	 document.write("★");
 }

 </script>


<div>
<label>コメント</label>
<br><%=request.getParameter("comments") %>
</div>

<div>
<br>
<input type="submit" class="review_btn" value="送信する" >
</div>

</form>

</div>
<jsp:include page="footer.jsp"/>
</body>
</html>