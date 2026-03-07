<%@ page import="com.school.miniinter.models.Guardian.Guardian" %>
<%@ page import="java.text.DateFormat" %>
<%@ page import="java.util.Locale" %>
<%@ page import="java.util.Date" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
<link rel="shortcut icon" href="${pageContext.request.contextPath}/assets/imgs/vidya.svg" type="image/x-icon">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Vidya - CRUD</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/geral/default.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/cssAdmin/addEdit.css">
</head>
<%
    request.setAttribute("active", "guardians");

    Guardian guardian = (Guardian) session.getAttribute("guardian");
    DateFormat format = DateFormat.getDateInstance(DateFormat.DEFAULT,
            new Locale("pt","BR"));
    Date utilDate = format.parse(guardian.getBirthDate());
    java.sql.Date date = new java.sql.Date(utilDate.getTime());
%>
<body>
    <div class="container">

        <%@include file="/common/sidebarAdmin.jsp"%>

        <main class="main-content">

            <h1>Responsáveis</h1>
            <h4>Editar responsáveis</h4>

            <div class="form-add">
                <div class="form-card">

                    <form class="student-form" action="${pageContext.request.contextPath}/adminGuardians?type=update" method="post">
                        <input name="guardian" id="guardian" value="<%=guardian.getId()%>" type="hidden">

                        <div class="form-row">
                            <div class="form-group">
                                <label for="name">Nome</label>
                                <input type="text" id="name" name="name"
                                       value="<%=guardian.getName()%>" required>
                            </div>
                            <div class="form-group">
                                    <label for="birth">Data de nascimento</label>
                                    <input type="date" id="birth" name="birth" value="<%=date%>" required>
                            </div>
                        </div>

                        <div class="form-actions">
                            <button type="submit" class="btn btn-primary">
                                <span>Editar</span>
                            </button>
                            <a href="${pageContext.request.contextPath}/adminGuardians?type=noot?" class="btn btn-secundary">Cancelar</a>
                        </div>
                    </form>
                </div>
            </div>
        </main>
    </div>
</body>
</html>