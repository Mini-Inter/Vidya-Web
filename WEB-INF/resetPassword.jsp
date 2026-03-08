<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <link rel="shortcut icon" href="${pageContext.request.contextPath}/assets/imgs/vidya.svg" type="image/x-icon">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/cssLogin/login.css">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;600;700&display=swap" rel="stylesheet">
    <title>Vidya - login</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/geral/default.css">
</head>

<body>
<div class="background">

    <div class="bolhas">
        <a href="<%=request.getContextPath()%>/index.jsp">
            <div class="voltar">
                <img src="${pageContext.request.contextPath}/assets/imgs/arrow-left.png" alt="botão voltar" width="50px" height="50px">
            </div>
        </a>
        <img src="${pageContext.request.contextPath}/assets/imgs/bolha1.png" class="bolha bolha1">
        <img src="${pageContext.request.contextPath}/assets/imgs/bolha2.png" class="bolha bolha2">
        <img src="${pageContext.request.contextPath}/assets/imgs/bolha3.png" class="bolha bolha3">
        <img src="${pageContext.request.contextPath}/assets/imgs/bolha4.png" class="bolha bolha4">
    </div>

    <div class="card">
        <div class="logo">
            <img src="${pageContext.request.contextPath}/assets/imgs/logoNav.png" alt="vidya logo">
        </div>

        <h1>Vamos resetar sua senha</h1>
        <p class="subtitulo">
            Por favor, informe a sua nova senha:
        </p>

        <form action="${pageContext.request.contextPath}/passwordReset" method="post">
            <input value="" name="login" id="login" type="hidden">
            <div class="inputt">
                <label for="pw1">Senha:</label>
                <input value="" required name="pw1" id="pw1" type="password">
            </div>
            <div class="inputt">
                <label for="pw2">Confirme sua senha:</label>
                <input value="" required name="pw2" id="pw2" type="password">
            </div>
            <%@include file="/common/erro.jsp"%>
            <button type="submit">Reiniciar senha</button>

        </form>

    </div>

</div>
</body>

</html>