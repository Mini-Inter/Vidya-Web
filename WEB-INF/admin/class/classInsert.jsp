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
    request.setAttribute("active","classes");
%>
<body>
    <div class="container">

        <%@include file="/common/sidebarAdmin.jsp"%>

        <main class="main-content">
            <h1>Turma</h1>
            <h4>Adicionar nova classroom</h4>

            <div class="form-add">
                <div class="form-card">

                    <form class="student-form" action="${pageContext.request.contextPath}/adminClasses?type=insert">

                        <div class="form-row">
                            <div class="form-group">
                                <label for="series">Série</label>
                                <input type="text" id="series" name="series" placeholder="Ex: 2° Ano" required>
                            </div>
                            <div class="form-group">
                                    <label for="classroom">Turma</label>
                                    <input type="text" id="classroom" name="classroom"  placeholder="Ex: G" required>
                            </div>
                        </div>

                        <div class="form-actions">
                            <button type="submit" class="btn btn-primary">
                                <span>Adicionar</span>
                            </button>
                            <a href="${pageContext.request.contextPath}/adminClasses?type=noot" class="btn btn-secundary">Cancelar</a>
                        </div>
                    </form>
                </div>
            </div>
        </main>
    </div>
</body>
</html>