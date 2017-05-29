<%@page pageEncoding="UTF-8"%>
<html>
<body>
<html:errors/>
	◆Strutsのタグで表示<br>
	&nbsp;&nbsp;&nbsp;&nbsp;<bean:write name="message"/>①<br>

	◆JSTLのタグで表示<br>
	&nbsp;&nbsp;&nbsp;&nbsp;<c:out value="${message}" />②<br>

	◆ELで表示<br>
	&nbsp;&nbsp;&nbsp;&nbsp;${f:h(message)}③<br><br>

	<s:form method="POST">
		◆HTTPセッション学習<br>
		◇userIdを入力してください。<br>
		&nbsp;&nbsp;&nbsp;&nbsp;<html:text property="id" />
		<br>

		◇userNameを入力してください。<br>
		&nbsp;&nbsp;&nbsp;&nbsp;<html:text property="name" />
		<br><br>

		◆配列マッピング学習<br>
		&nbsp;&nbsp;&nbsp;&nbsp;
		<html:select property="products" multiple="true">
			<html:option value="S2Container" />
			<html:option value="SAStruts" />
			<html:option value="S2JDBC" />
		</html:select>
		<br><br>

		◆ネストDTO学習
		&nbsp;&nbsp;&nbsp;&nbsp;
		<table border="1">
			<tr><th>名前</th><th>メールアドレス</th></tr>
			<c:forEach items="${rows}" varStatus="s">
				<tr>
					<td><html:text property="rows[${s.index}].name" size="20"/></td>
					<td><html:text property="rows[${s.index}].mail" size="40"/></td>
				</tr>
			</c:forEach>
		</table>

		<s:submit property="echo" value="送信"/>
	</s:form>
</body>
</html>