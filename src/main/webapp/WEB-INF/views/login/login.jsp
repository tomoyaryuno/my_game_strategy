<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="constants.AttributeConst" %>
<%@ page import="constants.ForwardConst" %>

<c:set var="action" value="${ForwardConst.ACT_AUTH.getValue()}" />
<c:set var="command" value="${ForwardConst.CMD_LOGIN.getValue()}" />
<c:set var="commIdx" value="${ForwardConst.CMD_INDEX.getValue()}" />
<c:set var="commCrt" value="${ForwardConst.CMD_CREATE.getValue()}" />
<c:set var="actEmp" value="${ForwardConst.ACT_EMP.getValue()}" />
<c:set var="commNew" value="${ForwardConst.CMD_NEW.getValue()}" />

<c:import url="/WEB-INF/views/layout/app.jsp">
    <c:param name="content">
        <c:if test="${loginError}">
            <div id="flush_error">
                IDかパスワードが間違っています。
            </div>
        </c:if>
        <c:if test="${flush != null}">
            <div id="flush_success">
                <c:out value="${flush}"></c:out>
            </div>
        </c:if>
        <h2 style="background-image: url(css/22154018.jpg);">ログイン</h2>
        <form method="POST" action="<c:url value='/?action=${action}&command=${command}' />">
            <label for="${AttributeConst.EMP_CODE.getValue()}">ID</label><br />
            <input type="text" name="${AttributeConst.EMP_CODE.getValue()}" value="${code}" />
            <br /><br />

            <label for="${AttributeConst.EMP_PASS.getValue()}">パスワード</label><br />
            <input type="password" name="${AttributeConst.EMP_PASS.getValue()}" />
            <br /><br />

            <input type="hidden" name="${AttributeConst.TOKEN.getValue()}" value="${_token}" />
            <button type="submit">ログイン</button>

            <h1><a href="<c:url value='/?action=${actTop}&command=${commIdx}' />"></a></h1>

        </form>

        <a href="<c:url value='?action=${actEmp}&command=${commNew}' />">新規アカウントの登録</a>

    </c:param>
</c:import>

