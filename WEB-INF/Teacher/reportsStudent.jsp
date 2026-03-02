<%@ page import="com.school.miniinter.models.Subject.Subject" %>
<%@ page import="java.util.List" %>
<%@ page import="com.school.miniinter.models.Students.Summary" %>
<%@ page
        import="com.school.miniinter.models.Reports.CompleteInformationReportStudent" %>
<%@ page
        import="com.school.miniinter.models.Reports.CompleteInformationReportStudent" %>
<%@ page import="java.time.LocalDate" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    request.setAttribute("active", "report");
    List<Subject> subjects = (List<Subject>) session.getAttribute("subjects");
    int idSubject = (Integer) session.getAttribute("subject");

    Summary student = (Summary) session.getAttribute("student");
    List<CompleteInformationReportStudent> reports =
            (List<CompleteInformationReportStudent>) session.getAttribute("reports");
%>
<html lang="pt-br">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/css/cssTeacher/perfilAluno.css">
    <title>Vidya - Professor</title>
</head>

<body>
<div class="container">

    <%@include file="../../common/sidebarTeacher.jsp"%>

    <main class="main-content">
        <header class="page-header">
            <h1>Perfil do Aluno</h1>
        </header>

        <div class="student-card">
            <img class="student-avatar" src="<%=request.getContextPath()%>/assets/assetsTeacher/perfilverde.png">
            <div class="student-info">
                <h3><%=student.getName()%></h3>
                <div class="info-row">
                    <span>Turma: <strong><%=student.getClassStudent()%></strong></span>
                    <span>Matrícula:<strong>#<%=student.getMatricula()%></strong></span>
                </div>
                <p class="academic-year">Ano letivo:<strong><%int
                        current_year = LocalDate.now().getYear();%><%=current_year%></strong>
                </p>

            </div>
        </div>

        <div class="tabs-container">
            <form>
                <input type="hidden" name="student" value="<%=student.getMatricula()%>">
                <input type="radio" name="tabs" id="notas"
                       onchange="this.form.action='studentGrades';this.form.submit()" >
                <input type="radio" name="tabs" id="observacoes"
                       onchange="this.form.action='studentReports';this.form.submit()" checked>
                <div class="tabs">
                    <label for="notas" class="tab">Notas</label>
                    <label for="observacoes" class="tab">Observações</label>
                </div>
                <div class="content">
                    <div class="tab-content content-observacoes">
                        <div class="observations-list">
                            <%
                                if (reports.isEmpty()) {
                            %>
                            <h2>Não encontramos nenhuma observação!</h2>
                            <%
                            } else {
                                for (CompleteInformationReportStudent report : reports) {
                            %>
                            <div class="observation-card">
                                <div class="observation-left">
                                    <div class="left-line"></div>
                                </div>
                                <div class="observation-content">
                                    <div class="observation-header">
                                        <span class="highlight"><%=report.getTeacher_name()%></span>
                                        <span class="observation-date"><%=report.getSend_at()%></span>
                                    </div>
                                    <p class="observation-text">
                                        <%=report.getDescription()%>
                                    </p>
                                    <div class="observation-footer"><span class="observation-type elogio"><%=report.getType()%></span>
                                    </div>
                                </div>
                            </div>
                            <%
                                    }
                                }
                            %>
                        </div>
                    </div>
                </div>
            </form>

            <%@include file="../../common/sidebarTeacherChangeSubject.jsp"%>
    </main>
</body>

</html>
