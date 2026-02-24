<%@ page import="com.school.miniinter.models.Students.BasicInfo" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    BasicInfo basicInfo = (BasicInfo) request.getAttribute("basicInfo");
    Integer amountSubjects = (Integer) request.getAttribute("amountSubjects");
    Double avgGrade = (Double) request.getAttribute("avgGrade");
    Integer amountReports = (Integer) request.getAttribute("amountReports");
%>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Vidya - Aluno</title>
    <link rel="stylesheet" href="css/home.css">
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

        <main class="main-content">
            <img class="welcome" src="assets/mascote-pandinha.jpg"
                 alt="foto mascote vidya">
            <h1>Informações básicas</h1>
            <p>Turma: <%=basicInfo.getSeries()%>°<%=basicInfo.getClassroom()%></p>
            <p>Total de matérias: <%=request.getAttribute("amountSubjects")%></p>
            <p>Média total: <%=request.getAttribute("avgGrade")%></p>
            <p>Total de observações: <%=request.getAttribute("amountReports")%></p>

            <header class="page-header">
                <h1>Olá, <%=basicInfo.getFirst_name()%></h1>
                <p class="subtitle">Veja um resumo do seu desempenho escolar!</p>
            </header>

            <div class="student-card">
                <img class="student-avatar" src="assets/perfil-aluno-home.jpg">
                <div class="student-info">
                    <h3><%=basicInfo.getFull_name()%></h3>
                    <div class="info-row">
                        <span>Turma: <strong><%=basicInfo.showClass()%></strong></span>
                        <span>Matrícula: <strong>#<%=basicInfo.getId_student()%></strong></span>
                    </div>
                    <p class="academic-year">Ano letivo:<strong><%=basicInfo.getSchool_year()%></strong>
                    </p>
                    
                </div>
            </div>

            <div class="cards-container">
                <div class="card">
                    <img class="icon disciplines" src="assets/aluno-disciplinas.jpg">
                    <div class="card-content">
                        <p class="card-number"><%=amountSubjects%></p>
                        <p class="card-label">Disciplinas</p>
                    </div>
                </div>

                <div class="card">
                    <img class="icon average" src="assets/media-geral.jpg">
                    <div class="card-content">
                        <p class="card-number"><%=avgGrade%></p>
                        <p class="card-label">Média geral</p>
                    </div>
                </div>

                <div class="card">
                    <img class="icon observations" src="assets/observacoes.jpg">
                    <div class="card-content">
                        <p class="card-number"><%=amountReports%></p>
                        <p class="card-label">Observações</p>
                    </div>
                </div>
            </div>

            <section class="quick-access">
                <h3>Acesso rápido</h3>
                <div class="quick-cards">
                    <a href="studentSubjects">
                        <div class="quick-card">
                            <img class="quick-icon" src="assets/card-disciplinas.jpg">
                            <h4>Disciplinas</h4>
                            <p>Veja todas as suas matérias</p>
                        </div>
                    </a>

                    <a href="gradeCard">
                        <div class="quick-card">
                            <img class="quick-icon" src="assets/card-notas.jpg">
                            <h4>Boletim</h4>
                            <p>Confira suas notas e situação</p>
                        </div>
                    </a>

                    <a href="observations">
                        <div class="quick-card">
                            <img class="quick-icon" src="assets/card-observacoes.jpg">
                            <h4>Observações</h4>
                            <p>Recado dos professores</p>
                        </div>
                    </a>
                </div>
            </section>
        </main>
    </div>
</body>
</html>