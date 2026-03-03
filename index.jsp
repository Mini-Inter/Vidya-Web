<%@ page contentType="text/html;charset=UTF-8" language="java" %><html lang="en">
<head>
    <meta charset="UTF-8">
<link rel="shortcut icon" href="${pageContext.request.contextPath}/assets/imgs/vidya.svg" type="image/x-icon">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/cssLogin/style.css">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;600;700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css">
    <link rel="shortcut icon" href="assets/imgs/vidya.svg" type="image/x-icon">
    <title>Vidya</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/geral/default.css">
</head>
<body>
    <section class="landing">
        <a href="Inicio/loginaa.jsp" class="logo">
            <img src="assets/imgs/logoNav.png" alt="logo">
        </a>

        <div class="texto">
            <h1>Bem-vindo ao Vidya!<br>
            Aprenda, acompanhe, evolua, tudo em um só lugar.</h1>
            <button type="button"
                    onclick="window.location.href='Inicio/login.jsp'">
                Acesse agora <i class="fa-solid fa-arrow-right"></i>
            </button>
        </div>

        <div class="imagem">
            <img src="assets/imgs/img%20landing.png" alt="imagem da landing">
        </div>
    </section>
</body>
</html>