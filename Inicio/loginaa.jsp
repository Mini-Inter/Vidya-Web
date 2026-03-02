<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String login = "";
    String password = "";
    if (session.getAttribute("login")!=null) {
        login = String.valueOf(session.getAttribute("login"));
    }
    if (session.getAttribute("password")!=null) {
        password = String.valueOf(session.getAttribute("password"));
    }
%>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <link rel="shortcut icon" href="${pageContext.request.contextPath}/assets/imgs/vidya.svg" type="image/x-icon">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/cssLogin/login.css">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;600;700&display=swap" rel="stylesheet">
    <title>Vidya - login</title>
</head>

<body>
<div class="background">

    <div class="bolhas">
        <img src="${pageContext.request.contextPath}/assets/imgs/bolha1.png" class="bolha bolha1">
        <img src="${pageContext.request.contextPath}/assets/imgs/bolha2.png" class="bolha bolha2">
        <img src="${pageContext.request.contextPath}/assets/imgs/bolha3.png" class="bolha bolha3">
        <img src="${pageContext.request.contextPath}/assets/imgs/bolha4.png" class="bolha bolha4">
    </div>

    <div class="card">
        <div class="logo">
            <img src="${pageContext.request.contextPath}/assets/imgs/logoNav.png" alt="vidya logo">
        </div>

        <h1>Olá administrador(a)!</h1>
        <p class="subtitulo">
            Por favor, entre com as suas credenciais
        </p>

        <form action="${pageContext.request.contextPath}/auth?type=loginAA" method="post">

            <div class="inputt">
                <label for="login">Email</label>
                <input value="<%=login%>" required name="login" id="login" type="text">
            </div>

            <div class="inputt">
                <label for="pw">Senha:</label>
                <input value="<%=password%>" required name="pw" id="pw" type="password">
            </div>
            <%@include file="/common/erro.jsp"%>
            <button type="submit">Entrar</button>

        </form>

        <div id="overlay" class="overlay">
            <div class="popup">
                <h2>Crie sua conta</h2>
                <p>Insira o seu CPF:</p>
                <input type="text" placeholder="Digite seu CPF">
                <button id="continuarBtn">Continuar</button>
            </div>
        </div>

        <script>
            const abrirPopup = document.getElementById("abrirPopup");
            const overlay = document.getElementById("overlay");
            const continuarBtn = document.getElementById("continuarBtn");

            // Abrir popup
            abrirPopup.addEventListener("click", function (e) {
                e.preventDefault();
                overlay.classList.add("active");
            });

            // Fechar clicando fora
            overlay.addEventListener("click", function (e) {
                if (e.target === overlay) {
                    overlay.classList.remove("active");
                }
            });

            // Redirecionar ao clicar em Continuar
            continuarBtn.addEventListener("click", function () {
                window.location.href = "auth?type=signup&pre=true";
            });

            // Fechar com ESC
            document.addEventListener("keydown", function (e) {
                if (e.key === "Escape") {
                    overlay.classList.remove("active");
                }
            });
        </script>

    </div>

</div>
</body>

</html>