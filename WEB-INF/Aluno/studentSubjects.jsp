
<%@ page import="com.school.miniinter.models.Subject.Subject" %>
<%@ page import="java.util.List" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    List<Subject> subjects = (List<Subject>) request.getAttribute("subjects");
%>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Vidya - Aluno</title>
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/css/cssStudent/disciplina.css">
</head>
<body>
    <div class="container">
        <aside class="sidebar">
            <div class="logo">
                <img class="logo-icon" 
                     src="${pageContext.request.contextPath}/assets/assetsStudent/Vydia-logo.jpg">
                <div class="logo-text">
                    <h1>vidya</h1>
                    <p>Plataforma escolar</p>
                </div>
            </div>

            <img class="line" src="${pageContext.request.contextPath}/assets/assetsStudent/navbar-linha.png" alt="divisor">

            <nav class="nav-menu">
                <a href="homeStudent" class="nav-item">
                    <img class="icon" src="${pageContext.request.contextPath}/assets/assetsStudent/navbar-home.png">
                    <span class="text">Home</span>
                </a>
                <a href="gradeCard" class="nav-item">
                    <img class="icon" src="${pageContext.request.contextPath}/assets/assetsStudent/navbar-notas.png">
                    <span class="text">Notas</span>
                </a>
                <a href="observations" class="nav-item">
                    <img class="icon" src="${pageContext.request.contextPath}/assets/assetsStudent/navbar-observacoes.png">
                    <span class="text">Observações</span>
                </a>
                <a href="studentSubjects" class="nav-item ">
                    <img class="icon" src="${pageContext.request.contextPath}/assets/assetsStudent/navbar-disciplinas.png">
                    <span class="text">Disciplinas</span>
                </a>
            </nav>

            <div class="sidebar-footer">
                <a href="profileStudent" class="nav-item active">
                    <img class="icon" src="${pageContext.request.contextPath}/assets/assetsStudent/navbar-perfil.png">
                    <span class="text">Perfil</span>
                </a>
                <a href="#" class="nav-item logout">
                    <img class="icon" src="${pageContext.request.contextPath}/assets/assetsStudent/navbar-exit.png">
                    <span class="text">Sair da conta</span>
                </a>
            </div>

        </aside>

        <main class="main-content disciplines-page">
            <header class="page-header">
                <h1>Disciplinas</h1>
            </header>

            <div class="disciplines-grid">
                <%
                    for (Subject s : subjects) {
                %>
                <div class="discipline-card">
                    <img src="${pageContext.request.contextPath}/assets/assetsStudent/<%=s.getName()%>.png" class="discipline-icon">
                    <h3><%=s.getName()%></h3>
                </div>
                <%
                    }
                %>
            </div>
        </main>
    </div>
</body>
</html>