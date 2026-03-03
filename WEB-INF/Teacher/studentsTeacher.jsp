<%@ page import="java.util.List" %>
<%@ page import="com.school.miniinter.models.Students.Summary" %>
<%@ page import="com.school.miniinter.models.Subject.Subject" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    request.setAttribute("active", "student");
    List<Summary> students = (List<Summary>) session.getAttribute("students");
    List<Subject> subjects = (List<Subject>) session.getAttribute("subjects");
%>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/css/cssTeacher/studentsTeacher.css">
    <title>Vidya - Professor</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/geral/link.css">
</head>

<body>
    <div class="container">

        <%@ include file="../../common/sidebarTeacher.jsp"%>

        <main class="main-content">
            <header class="page-header">
                <h1>Meus Alunos</h1>
            </header>
            <div class="search-container">
                <form action="<%=request.getContextPath()%>/teacherStudents">
                    <input value="" name="matricula" id="matricula" placeholder="Buscar por matrícula" type="number">
                    <input type="image" src="<%=request.getContextPath()%>/assets/assetsTeacher/search.png" alt="buscar" class="search-icon">
                </form>
            </div>


            <%
                for(Summary summary: students){
            %>
                <a href="studentGrades?student=<%=summary.getMatricula()%>" class="student-card-list">
                    <div class="card-content">
                        <h3><%=summary.getName()%></h3>

                        <div class="info">
                            <div>
                                <span>MATRÍCULA</span>
                                <p>#<%=summary.getMatricula()%></p>
                            </div>

                            <div>
                                <span>TURMA</span>
                                <p><%=summary.getClassStudent()%></p>
                            </div>

                            <div>
                                <span>MÉDIA</span>
                                <p><%=summary.getAverage()%></p>
                            </div>
                        </div>


                    </div>

                    <div class="status approved"><%=summary.getSituation()%></div>
                </a>
            <%}%>
            <%@include file="../../common/sidebarTeacherChangeSubject.jsp"%>
        </main>
    </div>
</body>

</html>