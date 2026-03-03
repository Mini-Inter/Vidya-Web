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
%>
<body>
    <div class="container">

        <%@include file="/common/sidebarAdmin.jsp"%>

        <main class="main-content">

            <h1>Responsáveis</h1>
            <h4>Adicionar novo responsável</h4>

            <div class="form-add">
                <div class="form-card">

                    <form class="student-form" action="${pageContext.request.contextPath}/adminGuardians?type=insert" method="post">

                        <div class="form-row">
                            <div class="form-group">
                                <label for="name">Nome</label>
                                <input type="text" id="name" name="name" placeholder="Ex: Maria de Andrade" required>
                            </div>
                            <div class="form-group">
                                    <label for="birth">Data de nascimento</label>
                                    <input type="date" id="birth" name="birth" required>
                            </div>
                        </div>

                        <div class="form-actions">
                            <button type="submit" class="btn btn-primary">
                                <span>Adicionar</span>
                            </button>
                            <a href="${pageContext.request.contextPath}/adminGuardians?type=noot" class="btn btn-secundary">Cancelar</a>
                        </div>
                    </form>
                </div>
            </div>
        </main>
    </div>
</body>
</html>