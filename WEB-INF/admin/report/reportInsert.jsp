<%@ page import="com.school.miniinter.models.Teacher.Teacher" %>
<%@ page import="java.util.List" %>
<%@ page import="com.school.miniinter.models.Students.Students" %>
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
    request.setAttribute("active", "reports");
    
    List<Teacher> listTeachers = (List<Teacher>) request.getAttribute("listTeachers");

    List<Students> listStudents = (List<Students>) request.getAttribute("listStudents");
%>
<body>
    <div class="container">
        
        <%@include file="/common/sidebarAdmin.jsp"%>

        <main class="main-content">

            <h1>Observações</h1>
            <h4>Adicionar nova observação</h4>

            <div class="form-add">
                <div class="form-card">

                    <form class="student-form" action="${pageContext.request.contextPath}/adminReports?type=insert" method="post">

                        <div class="form-row">
                            <div class="form-group">
                                <label for="students">Aluno(s)</label>
                                <select name="students" id="students" multiple size="1">
                                    <%
                                        for (Students student : listStudents) {
                                    %>
                                    <option value="<%=student.getId_student()%>"><%=student.getFull_name()%></option>
                                    <%
                                        }
                                    %>
                                </select>
                            </div>
                            <div class="form-group">
                                <label for="teacher">Professor(a)</label>
                                <select name="teacher" id="teacher">
                                    <option value="" disabled selected>Selecione um professor</option>
                                    <%
                                        for (Teacher t : listTeachers) {
                                    %>
                                    <option value="<%=t.getId()%>"><%=t.getName()%></option>
                                    <%
                                        }
                                    %>
                                </select>
                            </div>
                        </div>

                        <div class="form-row">
                            <div class="form-group">
                                <label for="description">Descrição </label>
                                <input type="text" id="description" name="description" placeholder="Ex: Isepe fez um ótimo trabalho" required>
                            </div>
                            <div class="form-group">
                                <label for="classification">Tipo </label>
                                <input type="text" id="classification" name="classification" placeholder="Ex: Elogio" required>
                            </div>
                        </div>

                        <div class="form-actions">
                            <button type="submit" class="btn btn-primary">
                                <span>Adicionar</span>
                            </button>
                            <a href="${pageContext.request.contextPath}/adminReports?type=noot" class="btn btn-secundary">
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