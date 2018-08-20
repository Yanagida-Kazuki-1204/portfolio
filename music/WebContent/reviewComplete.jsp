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
<h1>THANK YOU!</h1>
<form method="POST" action="HomeAction">
<p>お客様のレビューが送信されました。</p>
<p>貴重なご意見ありがとうございました。</p>


<div>
<br><br><br>
<br><br><br>
<input type="submit" class="review_btn" value="TOPに戻る" >
</div>

</form>

</div>
<jsp:include page="footer.jsp"/>
</body>
</html>