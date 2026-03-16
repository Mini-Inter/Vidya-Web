<%@ page import="com.school.miniinter.models.PreRegistration.PreRegistration" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="pt-BR">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Vidya - CRUD</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/geral/default.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/cssAdmin/addEdit.css">
</head>
<%
    request.setAttribute("active", "preRegister");
%>
<body>
<div class="container">
    <%@include file="/common/sidebarAdmin.jsp"%>

    <main class="main-content">

        <h1>Pré registro</h1>
        <h4>Adicionar novo pré registro</h4>

        <div class="form-add">
            <div class="form-card">

                <form class="student-form"
                      action="${pageContext.request.contextPath}/adminPreRegistration?type=insert" method="post">

                    <div class="form-preregistror">
                        <div class="form-group">
                            <label for="cpf">CPF</label>
                            <input type="text" id="cpf" name="cpf" placeholder="234.456.678-98" required>
                        </div>
                    </div>
                    <div class="form-actions">
                        <button type="submit" class="btn btn-primary">
                            <span>Adicionar</span>
                        </button>
                        <a href="${pageContext.request.contextPath}/adminPreRegistration"
                           class="btn btn-secundary">Cancelar</a>
                    </div>
                </form>
            </div>
        </div>
    </main>
</div>
</body>

</html>