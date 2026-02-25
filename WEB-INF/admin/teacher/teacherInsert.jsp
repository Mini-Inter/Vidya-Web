<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Vidya - CRUD</title>
    <link rel="stylesheet" href="../css/addEdit.css">
</head>
<body>
    <%
        String active = "teachers";
    %>
    <div class="container">

        <%@include file="../../../common/sidebarAdmin.jsp"%>

        <main class="main-content">

            <h1>Professores</h1>
            <h4>Adicionar novo professor</h4>

            <div class="form-add">
                <div class="form-card">

                    <form class="student-form" action="<%=request.getContextPath()%>/adminTeachers?type=insertTeacher"
                          method="post">

                        <div class="form-row">
                            <div class="form-group">
                                <label for="name">Nome completo</label>
                                <input type="text" id="name" name="name" placeholder="Ex: Maria de Andrade" required>
                            </div>
                            <div class="form-group">
                                    <label for="birth">Data de nascimento</label>
                                    <input type="date" id="birth" name="birth" required>
                            </div>
                        </div>

                        <div class="form-row">
                            <div class="form-group">
                                <label for="phone">Telefone (com DDD)</label>
                                <input type="text" id="phone" name="phone" placeholder="Ex: (11) 98888-9897" required>
                            </div>
                            <div class="form-group">
                                    <label for="email">Email</label>
                                    <input type="email" id="email" name="email" placeholder="Ex: usuario@gmail.com" required>
                            </div>
                        </div>

                        <div class="form-row">
                            <div class="form-group">
                                <label for="pass">Senha</label>
                                <input type="password" id="pass" name="pass" placeholder="********" required>
                            </div>
                        </div>

                        <div class="form-actions">
                            <button type="submit" class="btn btn-primary">
                                <span>Adicionar</span>
                            </button>
                            <form action="<%=request.getContextPath()%>/adminTeachers?type=noot" method="post">
                                <input class="btn btn-secundary" type="submit" value="Cancelar">
                            </form>
                        </div>
                    </form>
                </div>
            </div>
        </main>
    </div>
</body>
</html>