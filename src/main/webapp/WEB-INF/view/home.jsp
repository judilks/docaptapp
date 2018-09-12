<%--
  Created by IntelliJ IDEA.
  User: judil
  Date: 8/13/2018
  Time: 2:05 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="s" uri ="http://www.springframework.org/tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<s:url var="jquery" value="/static/js/jquery.js"/>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>DAMS Home Page</title>
</head>
<s:url var="url_bootstrap" value="/static/css/bootstrap.min.css" />
<s:url var="stickyfooternavbar" value="/static/css/sticky-footer-navbar.css" />
<s:url var="staticcss" value="/static/css/style.css" />
<s:url var="bootstrapjs" value="/static/js/bootstrap.js"/>
<link href="${url_bootstrap}" type="text/css" rel="stylesheet">
<link href="${staticcss}" type="text/css" rel="stylesheet">
<link href="${stickyfooternavbar}" type="text/css" rel="stylesheet">
<body>
<!----Header----->
<%@include file="common/header.jsp"%>
<div class="container">

    <!-- Begin page content -->
    <main role="main" class="container">
        <h1 class="mt-5">Sticky footer with fixed navbar</h1>
        <p class="lead">Pin a fixed-height footer to the bottom of the viewport in desktop browsers with this custom HTML and CSS. A fixed navbar has been added with <code>padding-top: 60px;</code> on the <code>body &gt; .container</code>.</p>
        <p>Back to <a href="../sticky-footer">the default sticky footer</a> minus the navbar.</p>
    </main>
</div>
<%@include file="common/footer.jsp"%>
<script src="${bootstrapjs}"></script>
<script>window.jQuery || document.write('<script src="${jquery}"><\/script>')</script>
</body>
</html>
