<%@ page import="java.util.List" %>
<%@ page import="com.school.miniinter.models.Class.Class" %>
<%@ page import="java.util.List" %>
<%@ page import="com.school.miniinter.models.PreRegistration.PreRegistration" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<head>
    <meta charset="UTF-8">
    <link rel="shortcut icon" href="${pageContext.request.contextPath}/assets/imgs/vidya.svg" type="image/x-icon">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Vidya - CRUD</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/geral/link.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/cssAdmin/addEdit.css">
</head>
<%
    request.setAttribute("active", "students");
    List<Class> classes = (List<Class>)  session.getAttribute("classes");

    List<PreRegistration> cpfs = (List<PreRegistration>) session.getAttribute("cpfs");
%>
<body>
    <div class="container">

        <%@include file="/common/sidebarAdmin.jsp"%>

        <main class="main-content">

            <h1>Alunos</h1>
            <h4>Adicionar novo aluno</h4>

            <div class="form-add">
                <div class="form-card">
                    <form class="student-form" action="${pageContext.request.contextPath}/adminStudents?type=insert" method="post">

                        <div class="form-row">
                            <div class="form-group">
                                <label for="cpf">CPF</label>
                                <select name="cpf" id="cpf">
                                    <option value="" disabled selected>Selecione um CPF</option>
                                    <%
                                        for (PreRegistration cpf: cpfs) {
                                    %>
                                    <option value="<%=cpf.getId()%>"><%=cpf.getCpf()%></option>
                                    <%
                                        }
                                    %>
                                </select>
                            </div>
                            <div class="form-group">
                                <label for="turma">Turma</label>
                                <select name="turma" id="turma">
                                    <option value="" disabled selected>Selecione uma turma</option>
                                    <%
                                        for (Class classroom : classes) {
                                    %>
                                    <option value="<%=classroom.getId()%>">
                                        <%=classroom.getSeries()%>°<%=classroom.getClassroom()%>
                                    </option>
                                    <%
                                        }
                                    %>
                                </select>
                            </div>
                        </div>

                        <div class="form-row">
                            <div class="form-group">
                                <label for="name">name </label>
                                <input type="text" id="name" name="name" placeholder="Ex: Ana Souza" required>
                            </div>
                            <div class="form-group">
                                <label for="phone">Telefone (com DDD) </label>
                                <input type="tel" id="phone" name="name" placeholder="Ex: (11) 98888-9897" required>
                            </div>
                            
                        </div>

                        <div class="form-row">
                            <div class="form-group">
                                <label for="birth">Data de nascimento </label>
                                <input type="date" id="birth" name="birth" required>
                            </div>
                            <div class="form-group">
                                <label for="email">Email </label>
                                <input type="email" id="email" name="email" placeholder="ana.souza@gmail.com" required>
                            </div>
                            
                        </div>

                        <div class="form-row">
                            <div class="form-group">
                                <label for="pass">Senha </label>
                                <input type="password" id="pass" name="pass" placeholder="*******" required>
                            </div>

                        </div>
                        
                        <div class="form-actions">
                            <button type="submit" class="btn btn-primary">
                                <span>Adicionar</span>
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
