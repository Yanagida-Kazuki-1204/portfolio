<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="./css/style.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Open+Sans:300" type="text/css" />
<title>HOME</title>
</head>

<body>
<jsp:include page="header.jsp" />
<div id="contents">
<h1>新着レビュー</h1>
<div id="new-review">
<s:iterator value="#session.homeDtoList">
<table class="topview-table" >
<tr>
    <td class="col1"><s:property value="title"/></td>
    <td class="col2"><script type="text/javascript">
     for(var a = 1; a <=<s:property value="star"/>; a++){
	 document.write("★");
     }</script></td>
    <td class="col3"><s:property value="comments"/></td>
</tr>
</table>
</s:iterator>
</div>

<div id="p-wrapper">
<div id="loop"></div>
	<ul id="piano">
		<li><div class="anchor"></div><span></span></li>
		<li><div class="anchor"></div><span></span></li>
		<li><div class="anchor"></div><span></span></li>
		<li><div class="anchor"></div></li>
		<li><div class="anchor"></div><span></span></li>
		<li><div class="anchor"></div><span></span></li>
		<li><div class="anchor"></div></li>
        <li><div class="anchor"></div></li>

        <li><a href=ProductListAction></a><span></span><b>商品一覧</b>
        </li>
		<li><a href=CartAction></a><span></span><b>カート</b>
		</li>
        <li><div class="anchor"></div></li>
        <li><a href=MyPageAction></a><span></span><b>マイページ</b>
        </li>

		<li><div class="anchor"></div><span></span></li>
		<li><div class="anchor"></div></li>
		<li><div class="anchor"></div><span></span></li>
		<li><div class="anchor"></div><span></span></li>
		<li><div class="anchor"></div><span></span></li>
		<li><div class="anchor"></div></li>
		<li><div class="anchor"></div><span></span></li>
		<li><div class="anchor"></div><span></span></li>
		<li><div class="anchor"></div></li>
		<li><div class="anchor"></div><span></span></li>
		<li><div class="anchor"></div><span></span></li>
		<li><div class="anchor"></div><span></span></li>
		<li><div class="anchor"></div></li>
		<li><div class="anchor"></div><span></span></li>
		<li><div class="anchor"></div><span></span></li>
		<li><div class="anchor"></div></li>
		<li><div class="anchor"></div><span></span></li>
		<li><div class="anchor"></div><span></span></li>
		<li><div class="anchor"></div><span></span></li>
		<li><div class="anchor"></div></li>
	</ul>
</div>

</div>
<s:include value="footer.jsp"/>
</body>
</html>