<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>JSP学習②</title>
</head>
<body>
	◆JSTLタグ（coreタグ）<br>
	◇c:out<br>
	・HTMLタグ（エスケープあり）<br>
	<c:out value="<b>${message}</b>"/><br>
	・HTMLタグ（エスケープなし）<br>
	<c:out value="<b>${message}</b>" escapeXml="false"/><br>
	<br>

	◇c:forEach（配列要素数分繰り返し）<br>
	◇c:if（条件分岐）<br>
	◇c:choose（複数条件分岐（CASE））<br>
	<c:forEach items="${searchResult2}" var="rst2" varStatus="status">
		<c:out value="<li>${status.count} - ${rst2}</li>" escapeXml="false"/>
		<c:choose>
			<c:when test="${rst2=='りんご'}">※りんご</c:when>
			<c:otherwise>※りんご以外</c:otherwise>
		</c:choose>
		<c:if test="${status.count>2}">
			c:if…<c:out value="status.count>2"/>
		</c:if>
	</c:forEach>
	<br>
	<br>

	◇c:import（コンテンツのインポート）<br>
	<c:import url="/WEB-INF/view/jspStudy/sub.jsp" var="include">
		<c:param name="testParam" value="パラメータ動的セット" />
	</c:import>
	${include}
	<br>
	<br>

<%-- 	<c:set target="${jspStudyForm}" property="message" value="test"/>
	${f:h(jspStudyForm.message)} --%>
	<%-- <c:remove var="include"/> --%>
	<% pageContext.removeAttribute("include"); %>
	${include}

	◆JSTLタグ（fmtタグ）<br>
	◇fmt:formatDate<br>
	<fmt:formatDate value="${date}" pattern="yyyy年MM月dd日 HH時mm分ss秒"/><br>
	<br>

	◇fmt:formatNumber<br>
	・数値3桁ゼロ埋め<br>
	<fmt:formatNumber value="1" pattern="000"/><br>
	・正規号と負記号<br>
	<fmt:formatNumber value="10000.123" pattern="△#.##;▼#.##"/><br>
	<fmt:formatNumber value="-10000.123" pattern="△#.##;▼#.##"/><br>
	・ドル記号<br>
	<fmt:formatNumber value="10000" type="currency" currencySymbol="$"/><br>
	<br>

	◆SAStruts タグライブラリ<br>
	◇fmt:formatDate<br>
	<s:link href="index">戻る</s:link><br>

	◆SAStruts EL関数<br>
	◇f:h()※HTMLタグのエスケープ<br>
	${f:h("<br>&'")}<br>
	<br>

	◇f:u()※URLエンコード<br>
	<c:set var="searchKey" value="seasar2"/>
	<a href="http://www.google.co.jp/search?q=${f:u(searchKey)}">Googleで検索</a><br>
	<br>

	◇f:nbsp()※半角スペースを&nbps;に変換する。<br>
	${f:nbsp(f:h("1    2    3"))}
	<br></body>
</html>