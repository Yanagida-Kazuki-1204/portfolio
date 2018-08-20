<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="./css/style.css">
<title>HOME</title>
</head>

<body>
<jsp:include page="header.jsp" />
<div id="review-contents">
<h1>レビュー記入画面</h1>
<form method="POST" action="ReviewConfirmAction">
<s:if test="#session.purchaseHistoryInfoDtoList.size()>0">
<s:iterator value="#session.purchaseHistoryInfoDtoList">

<div>
<label>タイトル</label>
<br>
<input type="text" class="text" size="35" name="title">
</div>

<div>
<br>
<label>商品名</label>
<br>
<s:property value="productName" />
</div>

<div>
<br>
<label>評価</label>
<br>
  <div class="evaluation">
    <input id="star1" type="radio" name="star" value="5" />
    <label for="star1"><span class="text">最高</span>★</label>
    <input id="star2" type="radio" name="star" value="4" />
    <label for="star2"><span class="text">良い</span>★</label>
    <input id="star3" type="radio" name="star" value="3" />
    <label for="star3"><span class="text">普通</span>★</label>
    <input id="star4" type="radio" name="star" value="2" />
    <label for="star4"><span class="text">悪い</span>★</label>
    <input id="star5" type="radio" name="star" value="1" />
    <label for="star5"><span class="text">最悪</span>★</label>
  </div>
</div>

<div>
<label>コメント</label>
<br>
<textarea cols="35" rows="7" name="comments"></textarea>
</div>


<div>
<br>
<input type="submit" class="review_btn" value="確認画面に移動する" >
</div>
</s:iterator>
</s:if>
</form>


<s:else>
<div class="info">
レビューを書ける商品がありません。
</div>
</s:else>
</div>
<s:include value="footer.jsp"/>
</body>
</html>