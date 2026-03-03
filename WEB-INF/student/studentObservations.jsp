<%@ page
        import="com.school.miniinter.models.Reports.CompleteInformationReportStudent" %>
<%@ page import="java.util.List" %>
<%@ page
        import="com.school.miniinter.models.Reports.CompleteInformationReportStudent" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    List<CompleteInformationReportStudent> list =
            (List<CompleteInformationReportStudent>) request.getAttribute("List");
%>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <link rel="shortcut icon" href="${pageContext.request.contextPath}/assets/imgs/vidya.svg" type="image/x-icon">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Vidya - Aluno</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/geral/link.css">
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/css/cssStudent/observacoes.css">
</head>
<body>
    <div class="container">

        <%@ include file="/common/sidebarStudent.jsp"%>


        <main class="main-content">
            <header class="page-header">
                <h1>Observações</h1>
            </header>

            <div class="filters">
                <a href="observations"><button class="tab-btn active">
                    Todas</button></a>
                <a href="observations?filter=Elogio"><button class="tab-btn">
                    Elogios</button></a>
                <a href="observations?filter=Aviso"><button class="tab-btn">
                    Avisos</button></a>
                <a href="observations?filter=Informativo"><button
                        class="tab-btn">Informativas</button></a>
            </div>

            <div class="observations-list">

                <%
                    for(CompleteInformationReportStudent c: list){%>
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
                            <%System.out.println(c.getType().toLowerCase());%>
                            <span class="observation-type <%=c.getType().toLowerCase()%>">
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