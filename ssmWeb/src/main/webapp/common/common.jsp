<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<html>
<head>
    <title>公共文件</title>
</head>
<script>
    var path = ${ctx};
    $(function () {
        alert(path);
    })
</script>
</html>