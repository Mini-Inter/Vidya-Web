<%@ page import="com.school.miniinter.models.Teacher.Teacher" %>
<%@ page import="java.text.DateFormat" %>
<%@ page import="java.util.Locale" %>
<%@ page import="java.sql.Date" %>
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
    request.setAttribute("active", "teachers");
    
    Teacher teacher = (Teacher) session.getAttribute("teacher");
    DateFormat format = DateFormat.getDateInstance(DateFormat.DEFAULT,
            new Locale("pt","BR"));
    java.util.Date utilDate = format.parse(teacher.getBirthDate());
    Date date = new Date(utilDate.getTime());
%>
<body>
    <div class="container">
        
        <%@include file="/common/sidebarAdmin.jsp"%>

        <main class="main-content">

            <h1>Professores</h1>
            <h4>Editar professor</h4>

            <div class="form-add">
                <div class="form-card">

                    <form class="student-form" action="${pageContext.request.contextPath}/adminTeachers?type=update" method="post">
                        <input type="hidden" name="teacher" value="<%=teacher.getId()%>">
                        <div class="form-row">
                            <div class="form-group">
                                <label for="name">Nome completo</label>
                                <input type="text" id="name" name="name" value="<%=teacher.getName()%>" required>
                            </div>
                            <div class="form-group">
                                    <label for="birth">Data de nascimento</label>
                                    <input type="date" id="birth" name="birth" value="<%=date%>" required>
                            </div>
                        </div>

                        <div class="form-row">
                            <div class="form-group">
                                <label for="phone">Telefone (com DDD)</label>
                                <input type="tel" id="phone" name="phone" value="<%=teacher.getPhone()%>" required>
                            </div>
                            <div class="form-group">
                                    <label for="email">Email</label>
                                    <input type="email" id="email" name="email" value="<%=teacher.getLogin()%>@vidya.org.br" required>
                            </div>
                        </div>

                        <div class="form-row">
                            <div class="form-group">
                                <label for="pass">Senha</label>
                                <input type="password" id="pass" name="pass" placeholder="********" value="">
                            </div>
                        </div>

                        <div class="form-actions">
                            <button type="submit" class="btn btn-primary">
                                <span>Editar</span>
                            </button>
                            <a href="${pageContext.request.contextPath}/adminTeachers?type=noot" class="btn btn-secundary">
                                Cancelar
                            </a>
                        </div>
                    </form>
                </div>
            </div>
        </main>
    </div>
</body>
</html>