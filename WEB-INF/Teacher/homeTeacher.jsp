<%@ page import="com.school.miniinter.models.Teacher.HomeTeacherInfo" %>
<%@ page import="com.school.miniinter.models.Subject.Subject" %>
<%@ page import="java.util.List" %>
<%@ page import="com.school.miniinter.dao.TeachersDAO" %>
<%@ page import="com.school.miniinter.dao.SubjectsDAO" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    request.setAttribute("active", "home");
    SubjectsDAO subjectsDAO = new SubjectsDAO();
    HomeTeacherInfo homeTeacherInfo =
            (HomeTeacherInfo) request.getAttribute("homeTeacherInfo");
    List<Subject> subjects = (List<Subject>) session.getAttribute("subjects");
    Integer idSubject = (Integer) session.getAttribute("subject");
    String subject = subjectsDAO.read(idSubject).getName();
%>
<html lang="pt-BR">

<head>
    <meta charset="UTF-8">
<link rel="shortcut icon" href="${pageContext.request.contextPath}/assets/imgs/vidya.svg" type="image/x-icon">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Vidya - Professor</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/geral/default.css">
    <link rel="stylesheet"
          href="<%=request.getContextPath()%>/css/cssTeacher/homeProf.css">
</head>

<body>
    <div class="container">
        
        <%@ include file="../../common/sidebarTeacher.jsp"%>

        <main class="main-content">
            <img class="welcome" src="<%=request.getContextPath()%>/assets/assetsTeacher/mascote.png" alt="">

            <header class="page-header">
                <h1>Olá,<%=homeTeacherInfo.getFirst_name()%></h1>
                <p class="subtitle">Gerencie suas turmas e acompanhe seus alunos</p>
            </header>

            <div class="student-card">
                <img class="student-avatar" src="<%=request.getContextPath()%>/assets/assetsTeacher/perfilverde.png">
                <div class="student-info">
                    <h3>Prof. <%=homeTeacherInfo.getFull_name()%></h3>
                    <div class="info-row">
                        <p>
                            Disciplina: <strong><span id="disciplinaAtual"><%=subject%></span></strong>
                        </p>
                    </div>

                </div>
            </div>

            <div class="cards-container">
                <div class="card">
                    <img class="icon disciplines" src="<%=request.getContextPath()%>/assets/assetsTeacher/alunosIcon2.png">
                    <div class="card-content">
                        <p class="card-number"><%=homeTeacherInfo.getAmountStudents()%></p>
                        <p class="card-label">Alunos</p>
                    </div>
                </div>

                <div class="card">
                    <img class="icon average" src="<%=request.getContextPath()%>/assets/assetsTeacher/turmasIcon.png">
                    <div class="card-content">
                        <p class="card-number"><%=homeTeacherInfo.getAmountClass()%></p>
                        <p class="card-label">Turmas</p>
                    </div>
                </div>

                <div class="card">
                    <img class="icon observations" src="<%=request.getContextPath()%>/assets/assetsTeacher/obsIcon2.png">
                    <div class="card-content">
                        <p class="card-number"><%=homeTeacherInfo.getAmountObservations()%></p>
                        <p class="card-label">Observações</p>
                    </div>
                </div>
            </div>

            <section class="quick-access">
                <h3>Acesso rápido</h3>
                <div class="quick-cards">
                    <a href="teacherStudents">
                        <div class="quick-card">
                            <img class="quick-icon" src="<%=request.getContextPath()%>/assets/assetsTeacher/alunosverde.png">
                            <h4>Meus alunos</h4>
                            <p>Veja todos os seus alunos</p>
                        </div>
                    </a>

                    <a href="updateGrade">
                        <div class="quick-card">
                            <img class="quick-icon" src="<%=request.getContextPath()%>/assets/assetsTeacher/notasverde.png">
                            <h4>Lançar notas</h4>
                            <p>Registre as notas da turma</p>
                        </div>
                    </a>

                    <a href="studentReports">
                        <div class="quick-card">
                            <img class="quick-icon" src="<%=request.getContextPath()%>/assets/assetsTeacher/obsverde.png">
                            <h4>Observações</h4>
                            <p>Escreva feedback para os alunos</p>
                        </div>
                    </a>
                </div>
            </section>
            <%@include file="../../common/sidebarTeacherChangeSubject.jsp"%>
        </main>
    </div>
</body>

</html>