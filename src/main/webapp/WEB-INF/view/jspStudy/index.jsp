<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>JSP 学習</title>
</head>
<body>
	◆スクリプトレット<br>
	<% for(int i=1; i<=10; i++){ %>
		<%= i %>回目
	<% } %>
	<br>

	◆タグライブラリ<br>
	<c:forEach begin="1" end="10" var="i">
		${i}回目
	</c:forEach>
	<br>

	◆JSP-EL<br>
	変数：${message}<br>
	演算：${1+1+1}<br>
	三項演算子：${message=='JSP学習' && !(message=='JSP学習a') ? 'True' : 'False'}<br>
	empty演算子：
	<c:if test="${empty searchResult}">
		検索結果は${fn:length(searchResult)}件です。
	</c:if><br>
	empty演算子（配列）：
	<c:if test="${!empty searchResult2}">
		検索結果は${fn:length(searchResult2)}件です。
		<ul>
			<c:forEach items="${searchResult2}" var="item">
				<li>${f:h(item)}</li>
			</c:forEach>
		</ul>
	</c:if><br>
	◆Strutsのhtmlタグ
	<s:form method="POST">
		<s:submit property="next" value="次の学習へ"/><br>
		ユーザ名：<html:text property="name"/><br>
		パスワード：<html:password property="password"/><br>

		<html:checkbox styleId="checkBox" property="checkBox" value="1"/>
		<label for="checkBox">チェックボックス</label><br>

		<html:multibox styleId="multiBox1" property="multiBox" value="1"/>
		<label for="multiBox1">マルチボックス①</label>
		<html:multibox styleId="multiBox2" property="multiBox" value="2"/>
		<label for="multiBox2">マルチボックス②</label>
		<html:multibox styleId="multiBox3" property="multiBox" value="3"/>
		<label for="multiBox3">マルチボックス③</label>
		<br>

		<html:select property="language">
			<html:option value="1">Java</html:option>
			<html:option value="2">C#</html:option>
			<html:option value="3">Python</html:option>
		</html:select>
	</s:form>
</body>
</html>
