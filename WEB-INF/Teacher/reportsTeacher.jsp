
<%@ page import="java.util.List" %>
<%@ page
        import="com.school.miniinter.models.Reports.CompleteInformationReportTeacher" %>
<%@ page import="java.util.LinkedList" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    request.setAttribute("active", "report");
    List<CompleteInformationReportTeacher> list =
            (List<CompleteInformationReportTeacher>) session.getAttribute("reports");
    LinkedList<Subject> subjects = (LinkedList<Subject>)
            session.getAttribute("subjects");
    Integer idSubject = (Integer) session.getAttribute("subject");
%>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/css/cssTeacher/observations.css">
    <title>Vidya - Professor</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/geral/link.css">
</head>

<body>
    <div class="container">

        <%@ include file="../../common/sidebarTeacher.jsp"%>

        <main class="main-content">
            <header class="page-header">
                <h1>Observações</h1>
            </header>

                <form action="teacherReports" class="tabs">

                    <input type="radio" name="tab" id="enviadas"
                           onchange="this.form.submit()" value="showReports" checked>
                    <input type="radio" name="tab" id="criar"
                           onchange="this.form.submit()" value="showCreation">

                    <div class="filters">
                        <label for="enviadas" class="tab-btn">Enviadas</label>
                        <label for="criar" class="tab-btn">Criar</label>
                    </div>
                
                    <form class="content">
                        <div class="tab-content enviadas">
                            <div class="observations-list">
                                <%
                                    for(CompleteInformationReportTeacher c: list){%>
                                    <div class="observation-card">
                                        <div class="observation-left">
                                            <div class="left-line"></div>
                                        </div>
                                        <div class="observation-content">
                                            <div class="observation-header">
                                                <span class="highlight"><%=c.getStudent_name()%></span>
                                                <span class="observation-date"><%=c.getSend_at()%></span>
                                            </div>
                                            <p class="observation-text">
                                                <%=c.getDescription()%>
                                            </p>
                                            <div class="observation-footer">
                                                <span class="observation-type elogio"><%=c.getType()%></span>
                                            </div>
                                        </div>
                                    </div>
                                <%}%>
                            </div>
                        </div>
                    </form>
                </form>

            <%@include file="../../common/sidebarTeacherChangeSubject.jsp"%>
        </main>
    </div>
</body>

</html>