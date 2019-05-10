<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>文件上传下载</title>
</head>
<body>
    <h1>上传文件</h1>
    <form method="post" action="${pageContext.request.contextPath}/user/doUpload" enctype="multipart/form-data">
        <input type="file" name="file"/>
        <input type="submit" value="上传文件"/>

    </form>
</body>
</html>
