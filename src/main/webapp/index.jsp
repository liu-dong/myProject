<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<script type="text/javascript">
    var path = ${ctx};
    $(function () {
        alert("1:"+path);
        console.log("1:"+path);
    });
    alert(path);
    console.log(path);
    top.location.replace("loginRegister/goLoginView");
</script>

