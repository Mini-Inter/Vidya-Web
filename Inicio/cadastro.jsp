<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String error = String.valueOf(session.getAttribute("error"));
    String name = "";
    String email = "";
    String birth = "";
    String pw = "";
    String pc = "";
    if (session.getAttribute("name")!=null)
        name = String.valueOf(session.getAttribute("name"));
    if (session.getAttribute("email")!=null)
        email = String.valueOf(session.getAttribute("email"));
    if (session.getAttribute("birth")!=null)
        birth = String.valueOf(session.getAttribute("birth"));
    if (session.getAttribute("pw")!=null)
        pw = String.valueOf(session.getAttribute("pw"));
    if (session.getAttribute("pc")!=null)
        pc = String.valueOf(session.getAttribute("pc"));
%>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/cadastro.css">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;600;700&display=swap" rel="stylesheet">
    <title>Vidya - cadastro</title>
</head>
<body>
    <%
        if (!error.equals("null")) {
    %>
    <p style="color: red"><%=error%></p>
    <%
            session.setAttribute("error", null);
        }
    %>
    <div class="background">

        <div class="bolhas">
            <img src="Inicio/imgs/bolha1.png" class="bolha bolha1">
            <img src="Inicio/imgs/bolha2.png" class="bolha bolha2">
            <img src="Inicio/imgs/bolha3.png" class="bolha bolha3">
            <img src="Inicio/imgs/bolha4.png" class="bolha bolha4">
        </div>

        <div class="card">

            <div class="logo">
                <img 
                        src="${pageContext.request.contextPath}/Inicio/imgs/logoNav.png" alt="vidya logo">
            </div>

            <h1>Comece agora!</h1>
            <p class="subtitulo">
                Por favor, insira suas credenciais
            </p>

            <form action="<%=request.getContextPath()%>/auth?type=signup&pre=false" method="post">

                <div class="inputt">
                    <label for="name">Nome Completo:</label>
                    <input value="<%=name%>" id="name" name="name" type="text">
                </div>

                <div class="inputt">
                    <label for="birth">Data de Nascimento:</label>
                    <input value="<%=birth%>" name="birth" id="birth" type="date">
                </div>

                <div class="inputt">
                    <label for="email">Email:</label>
                    <input value="<%=email%>" id="email" name="email" type="email">
                </div>

                <div class="inputt">
                    <label for="password">Crie sua senha:</label>
                    <input value="<%=pw%>" id="password" name="password" type="password">
                </div>

                <div class="inputt">
                    <label for="passwordConf">Confirme sua senha:</label>
                    <input value="<%=pc%>" name="passwordConf" id="passwordConf" type="password">
                </div>

                <button type="submit">Cadastrar</button>

            </form>
            <%
                session.setAttribute("name", null);
                session.setAttribute("birth", null);
                session.setAttribute("email", null);
                session.setAttribute("pw", null);
                session.setAttribute("pc", null);
            %>

        </div>

    </div>
</body>
</html>