
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
    <link rel="stylesheet" href="css/disciplina.css">
</head>
<body>
    <div class="container">
        <aside class="sidebar">
            <div class="logo">
                <img class="logo-icon" src="assets/Vydia-logo.jpg">
                <div class="logo-text">
                    <h1>vidya</h1>
                    <p>Plataforma escolar</p>
                </div>
            </div>

            <img class="line" src="assets/navbar-linha.png" alt="divisor">

            <nav class="nav-menu">
                <a href="homeStudent" class="nav-item">
                    <img class="icon" src="assets/navbar-home.png">
                    <span class="text">Home</span>
                </a>
                <a href="gradeCard" class="nav-item">
                    <img class="icon" src="assets/navbar-notas.png">
                    <span class="text">Notas</span>
                </a>
                <a href="observations" class="nav-item">
                    <img class="icon" src="assets/navbar-observacoes.png">
                    <span class="text">Observações</span>
                </a>
                <a href="studentSubjects" class="nav-item ">
                    <img class="icon" src="assets/navbar-disciplinas.png">
                    <span class="text">Disciplinas</span>
                </a>
            </nav>

            <div class="sidebar-footer">
                <a href="profileStudent" class="nav-item active">
                    <img class="icon" src="assets/navbar-perfil.png">
                    <span class="text">Perfil</span>
                </a>
                <a href="#" class="nav-item logout">
                    <img class="icon" src="assets/navbar-exit.png">
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
                    <img src="assets/<%=s.getName()%>.png" class="discipline-icon">
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