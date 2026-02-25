<%@ page import="com.school.miniinter.models.Guardian.Guardian" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Vidya - CRUD</title>
    <link rel="stylesheet" href="../css/addEdit.css">
</head>
<%
    String active = "guardians";

    Guardian guardian = (Guardian) session.getAttribute("guardian");
%>
<body>
    <div class="container">

        <%@include file="../../../common/sidebarAdmin.jsp"%>

        <main class="main-content">

            <h1>Responsáveis</h1>
            <h4>Editar responsáveis</h4>

            <div class="form-add">
                <div class="form-card">

                    <form class="student-form" action="<%=request.getContextPath()%>/adminGuardians?type=classUpdate" method="post">
                        <input name="guardian" id="guardian" value="<%=guardian.getId()%>" type="hidden">

                        <div class="form-row">
                            <div class="form-group">
                                <label for="nome">Nome</label>
                                <input type="text" id="nome" name="nome" value="<%=guardian.getName()%>" required>
                            </div>
                            <div class="form-group">
                                    <label for="datanascimento">Data de nascimento</label>
                                    <input type="date" id="datanascimento" name="datanascimento" value="<%=guardian.getBirthDate()%>" required>
                            </div>
                        </div>

                        <div class="form-actions">
                            <button type="submit" class="btn btn-primary">
                                <span>Editar</span>
                            </button>
                            <a href="<%=request.getContextPath()%>/adminGuardians?type=noot?" class="btn btn-secundary">Cancelar</a>
                        </div>
                    </form>
                </div>
            </div>
        </main>
    </div>
</body>
</html>