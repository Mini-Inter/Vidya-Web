<%@ page import="com.school.miniinter.models.Students.Summary" %>
<%@ page import="com.school.miniinter.models.Subject.Subject" %>
<%@ page import="java.util.List" %>
<%@ page import="com.school.miniinter.models.Grades.GradeForSubject" %>
<%@ page import="java.time.LocalDate" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    request.setAttribute("active", "grade");
    List<Subject> subjects = (List<Subject>) session.getAttribute("subjects");
    int idSubject = (Integer) session.getAttribute("subject");

    Summary student = (Summary) session.getAttribute("student");
    List<GradeForSubject> grades = (List<GradeForSubject>) session.getAttribute("grades");
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

            <form class="tabs-container">
                    <input type="hidden" name="student" value="<%=student.getMatricula()%>">
                    <input type="radio" name="tabs" id="notas" onchange="this.form.action='studentGrades';this.form.submit()" checked>
                    <input type="radio" name="tabs" id="observacoes" onchange="this.form.action='studentReports';this.form.submit()">
                    <div class="tabs">
                        <label for="notas" class="tab">Notas</label>
                        <label for="observacoes" class="tab">Observações</label>
                    </div>
                    <div class="content">
                        <div class="tab-content content-notas">
                            <div class="table-container">
                                <table class="boletim-table">
                                    <thead>
                                    <tr>
                                        <th>Disciplina</th>
                                        <th>Nota 1º Sem</th>
                                        <th>Nota 2º Sem</th>
                                        <th>Nota Final</th>
                                        <th>Situação</th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    <%
                                        int counter = 0;
                                        for (GradeForSubject grade : grades) {
                                            if(counter%2 == 0){
                                    %>
                                    <tr class="row-normal">
                                        <td class="discipline-name"><%=grade.getSubject()%></td>
                                        <%
                                            if (grade.getN1() == -1) {
                                        %>
                                        <td>—</td>
                                        <%
                                        } else {
                                        %>
                                        <td class="grade"><%=grade.getN1()%></td>
                                        <%
                                            }
                                            if (grade.getAverage() == -1) {
                                        %>
                                        <td>—</td>
                                        <%
                                        } else {
                                        %>
                                        <td class="grade"><%=grade.getN2()%></td>
                                        <%
                                            }
                                            if (grade.getAverage() == -1) {
                                        %>
                                        <td>—</td>
                                        <%
                                        } else {
                                        %>
                                        <td class="grade"><%=grade.getAverage()%></td>
                                        <%
                                            }
                                        %>
                                        <td class="status approved"><%=grade.getSituation()%></td>
                                    </tr>
                                    <%
                                    }else{%>
                                    <tr class="row-alternate">
                                        <td class="discipline-name"><%=grade.getSubject()%></td>
                                        <%
                                            if (grade.getN1() == -1) {
                                        %>
                                        <td>—</td>
                                        <%
                                        } else {
                                        %>
                                        <td class="grade"><%=grade.getN1()%></td>
                                        <%
                                            }
                                            if (grade.getAverage() == -1) {
                                        %>
                                        <td>—</td>
                                        <%
                                        } else {
                                        %>
                                        <td class="grade"><%=grade.getN2()%></td>
                                        <%
                                            }
                                            if (grade.getAverage() == -1) {
                                        %>
                                        <td>—</td>
                                        <%
                                        } else {
                                        %>
                                        <td class="grade"><%=grade.getAverage()%></td>
                                        <%
                                            }
                                        %>
                                        <td class="status approved"><%=grade.getSituation()%></td>
                                    </tr>
                                    <%     }
                                        counter ++;
                                    }
                                    %>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </form>

                <%@include file="../../common/sidebarTeacherChangeSubject.jsp"%>
        </main>
</body>

</html>