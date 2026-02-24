<%@ page
        import="com.school.miniinter.models.Reports.CompleteInformationReport" %>
<%@ page import="java.util.List" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    List<CompleteInformationReport> list =
            (List<CompleteInformationReport>) request.getAttribute("List");
%>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Vidya - Aluno</title>
    <link rel="stylesheet" href="css/observacoes.css">
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
            <header class="page-header">
                <h1>Observações</h1>
            </header>

            <div class="filters">
                <button class="tab-btn active">Todas</button>
                <button class="tab-btn">Elogios</button>
                <button class="tab-btn">Avisos</button>
                <button class="tab-btn">Informativas</button>
            </div>

            <div class="observations-list">

                <%
                    for(CompleteInformationReport c: list){%>
                <div class="observation-card">
                    <div class="observation-left">
                        <div class="left-line"></div>
                    </div>
                    <div class="observation-content">
                        <div class="observation-header">
                            <span class="professor-name">Prof. <span
                                    class="highlight"><%=c.getTeacher_name()%></span></span>
                            <span class="observation-date"><%=c.getSend_at()%></span>
                        </div>
                        <p class="observation-text">
                            <%=c.getDescription()%>
                        </p>
                        <div class="observation-footer">
                            <span class="observation-type <%String type = c.getType().toLowerCase();%><%=type%>">
                                <%=c.getType()%></span>
                        </div>
                    </div>
                </div>
                <%}%>
                
            </div>
        </main>
    </div>
</body>
</html>