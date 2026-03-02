
<%@ page import="com.school.miniinter.models.Subject.Subject" %>
<%@ page import="java.util.List" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    request.setAttribute("active", "subjects");

    List<Subject> subjects = (List<Subject>) request.getAttribute("subjects");
%>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <link rel="shortcut icon" href="${pageContext.request.contextPath}/assets/imgs/vidya.svg" type="image/x-icon">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Vidya - Aluno</title>
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/css/cssStudent/disciplina.css">
</head>
<body>
    <div class="container">
        <%@ include file="/common/sidebarStudent.jsp"%>

        <main class="main-content disciplines-page">
            <header class="page-header">
                <h1>Disciplinas</h1>
            </header>

            <div class="disciplines-grid">
                <%
                    for (Subject s : subjects) {
                %>
                <div class="discipline-card">
                    <img src="${pageContext.request.contextPath}/assets/assetsStudent/<%=s.getName()%>.png" class="discipline-icon">
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