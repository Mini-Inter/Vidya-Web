<%@ page import="com.school.miniinter.models.Students.BasicInfo" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    BasicInfo basicInfo = (BasicInfo) request.getAttribute("basicInfo");
    request.setAttribute("active", "home");
    Integer amountSubjects = (Integer) request.getAttribute("amountSubjects");
    Double avgGrade = (Double) request.getAttribute("avgGrade");
    Integer amountReports = (Integer) request.getAttribute("amountReports");
%>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
<link rel="shortcut icon" href="${pageContext.request.contextPath}/assets/imgs/vidya.svg" type="image/x-icon">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Vidya - Aluno</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/geral/default.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/geral/default.css">
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/css/cssStudent/home.css">
</head>
<body>
    <div class="container">
        <%@ include file="/common/sidebarStudent.jsp"%>

        <main class="main-content">
            <img class="welcome" src="${pageContext.request.contextPath}/assets/assetsStudent/mascote-pandinha.jpg"
                 alt="foto mascote vidya">

            <header class="page-header">
                <h1>Olá, <%=basicInfo.getFirst_name()%></h1>
                <p class="subtitle">Veja um resumo do seu desempenho escolar!</p>
            </header>

            <div class="student-card">
                <img class="student-avatar" src="${pageContext.request.contextPath}/assets/assetsStudent/perfil-aluno-home.jpg">
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
                    <img class="icon disciplines" src="${pageContext.request.contextPath}/assets/assetsStudent/aluno-disciplinas.jpg">
                    <div class="card-content">
                        <p class="card-number"><%=amountSubjects%></p>
                        <p class="card-label">Disciplinas</p>
                    </div>
                </div>

                <div class="card">
                    <img class="icon average" src="${pageContext.request.contextPath}/assets/assetsStudent/media-geral.jpg">
                    <div class="card-content">
                        <p class="card-number"><%=avgGrade%></p>
                        <p class="card-label">Média geral</p>
                    </div>
                </div>

                <div class="card">
                    <img class="icon observations" src="${pageContext.request.contextPath}/assets/assetsStudent/observacoes.jpg">
                    <div class="card-content">
                        <p class="card-number"><%=amountReports%></p>
                        <p class="card-label">Observações</p>
                    </div>
                </div>
            </div>

            <section class="quick-access">
                <h3>Acesso rápido</h3>
                <div class="quick-cards">
                    <a href="studentSubjects" class="cards-link">
                        <div class="quick-card">
                            <img class="quick-icon" src="${pageContext.request.contextPath}/assets/assetsStudent/card-disciplinas.jpg">
                            <h4>Disciplinas</h4>
                            <p>Veja todas as suas matérias</p>
                        </div>
                    </a>

                    <a href="gradeCard" class="cards-link">
                        <div class="quick-card">
                            <img class="quick-icon" src="${pageContext.request.contextPath}/assets/assetsStudent/card-notas.jpg">
                            <h4>Boletim</h4>
                            <p>Confira suas notas e situação</p>
                        </div>
                    </a>

                    <a href="observations" class="cards-link">
                        <div class="quick-card">
                            <img class="quick-icon" src="${pageContext.request.contextPath}/assets/assetsStudent/card-observacoes.jpg">
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