<%@page pageEncoding="UTF-8"%>
<html>
<body>
<html:errors/>
<s:form method="POST">
	名前を入力してください。
	<html:text property="name" />
	<s:submit property="echo" value="送信"/>
</s:form>
</body>
</html>