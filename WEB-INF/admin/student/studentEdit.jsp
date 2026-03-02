<%@ page import="com.school.miniinter.models.Students.Students" %>
<%@ page import="com.school.miniinter.models.Class.Class" %>
<%@ page import="java.util.List" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<head>
    <meta charset="UTF-8">
    <link rel="shortcut icon" href="${pageContext.request.contextPath}/assets/imgs/vidya.svg" type="image/x-icon">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Vidya - CRUD</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/cssAdmin/addEdit.css">
</head>
<%
request.setAttribute("active", "students");
Students student = (Students) session.getAttribute("student");

List<Class> classes = (List<Class>)  session.getAttribute("classes");
%>
<body>
    <div class="container">
        <%@include file="/common/sidebarAdmin.jsp"%>

        <main class="main-content">

            <h1>Alunos</h1>
            <h4>Editar aluno</h4>

            <div class="form-add">
                <div class="form-card">

                    <form class="student-form" action="${pageContext.request.contextPath}/adminStudents?type=update" method="post">

                        <div class="form-row">
                            <div class="form-group">
                                <label for="classroom">Turma</label>
                                <select name="classroom" id="classroom">
                                    <option value="" disabled >Selecione uma classroom</option>
                                    <%
                                    for (Class classroom : classes) {
                                    %>
                                    <option value="<%=classroom.getId()%>"><%=classroom.getSeries()%>°<%=classroom.getClassroom()%></option>
                                    <%
                                    }
                                    %>
                                </select>
                            </div>
                            <div class="form-group">
                                <label for="name">Nome </label>
                                <input type="text" id="name" name="name" value="<%=student.getFull_name()%>" required>
                            </div>

                        </div>

                        <div class="form-row">  
                            <div class="form-group">
                                <label for="phone">Telefone (com DDD) </label>
                                <input type="tel" id="phone" name="phone" value="<%=student.getPhone()%>" required>
                            </div>
                            <div class="form-group">
                                <label for="birth">Data de nascimento </label>
                                <input type="date" id="birth" name="birth" value="<%=student.getBirth_date()%>" required>
                            </div>

                            
                        </div>

                        <div class="form-row">
                            <div class="form-group">
                                <label for="email">Email </label>
                                <input type="email" id="email" name="email" value="<%=student.getLogin()%>@vidya.org.br" required>
                            </div>   

                            <div class="form-group">
                                <label for="pass">Senha </label>
                                <input type="password" id="pass" name="pass" value="*******" required>
                            </div>
                        </div>
                        
                        <div class="form-actions">
                            <button type="submit" class="btn btn-primary">
                                <span>Editar</span>
                            </button>
                            <a href="${pageContext.request.contextPath}/adminStudents?type=noot" class="btn btn-secundary">
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