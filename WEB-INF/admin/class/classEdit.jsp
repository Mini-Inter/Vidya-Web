<%@ page import="com.school.miniinter.models.Class.Class" %>
<%@ page import="com.school.miniinter.models.TeachingAssignment.Teaching" %>
<%@ page import="java.util.List" %>
<%@ page import="com.school.miniinter.models.Teacher.Teacher" %>
<%@ page import="com.school.miniinter.models.Subject.Subject" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <link rel="shortcut icon" href="${pageContext.request.contextPath}/assets/imgs/vidya.svg" type="image/x-icon">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Vidya - CRUD</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/geral/link.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/cssAdmin/addEdit.css">
</head>
<%
    request.setAttribute("active", "classes");
    Class classroom = (Class) session.getAttribute("classroom");

    Teaching[] aulas = (Teaching[]) session.getAttribute("aulas");
    List<Teacher> teachers = (List<Teacher>) session.getAttribute("teachers");
    List<Subject> subjects = (List<Subject>) session.getAttribute("subjects");
%>
<body>
    <div class="container">

        <%@include file="/common/sidebarAdmin.jsp"%>

        <main class="main-content">

            <h1>Turma</h1>
            <h4>Editar turma</h4>

            <div class="form-add">
                <div class="form-card">

                    <form class="student-form" action="${pageContext.request.contextPath}/adminClasses?type=update" method="post">
                        <input name="classroom" id="classroom" value="<%=classroom.getId()%>" type="hidden">

                        <div class="form-row">
                            <div class="form-group">
                                <label for="series">Série</label>
                                <input type="text" id="series" name="series" value="<%=classroom.getSeries()%>" required>
                            </div>
                            <div class="form-group">
                                    <label for="turma">Turma</label>
                                    <input type="text" id="turma" name="turma" value="<%=classroom.getClassroom()%>" required>
                            </div>
                        </div>
                        <%
                            for (int n = 0; n < 6; n++) {
                        %>
                        <div class="form-disciplines">
                            <input <%if(aulas[n].getIdTeaching() != null){%>value
                                           ="<%=aulas[n].getIdTeaching()%>"<%}%> name="aula<%=n%>Id" type="hidden">
                            <div class="form-group">
                                <label for="aula<%=n%>Subject">Matéria</label>
                                <select name="aula<%=n%>Subject" id="aula<%=n%>Subject">
                                    <option value="" disabled >Selecione uma matéria</option>
                                    <%
                                    if(aulas[n].isEmpty()) {
                                    %>
                                        <option selected value="">Indefinido</option>
                                    <%
                                        for(Subject subject: subjects) {
                                    %>
                                            <option value="<%=subject.getId()%>"><%=subject.getName()%></option>
                                    <%
                                        }
                                    } else {
                                        for (Subject subject : subjects) {
                                            if(aulas[n].getSubject().equals(subject.getName())) {
                                    %>
                                            <option selected value="<%=subject.getId()%>"><%=subject.getName()%></option>
                                    <%
                                            } else {
                                    %>
                                            <option value="<%=subject.getId()%>"><%=subject.getName()%></option>
                                    <%
                                                }
                                            }
                                        }
                                    %>
                                </select>
                            </div>
                            <div class="form-group">
                                    <label for="aula<%=n%>Teacher">Professor</label>
                                    <select name="aula<%=n%>Teacher" id="aula<%=n%>Teacher">
                                        <option value="" disabled >Selecione um professor</option>
                                        <%
                                        if(aulas[n].isEmpty()){
                                        %>
                                            <option selected value="">Indefinido</option>
                                        <%
                                            for(Teacher teacher: teachers){
                                        %>
                                                <option value="<%=teacher.getId()%>"><%=teacher.getName()%></option>
                                        <% }
                                        }else{
                                            for (Teacher teacher : teachers) {
                                                if(aulas[n].getTeacher().equals(teacher.getName())){
                                        %>
                                                <option selected value="<%=teacher.getId()%>"><%=teacher.getName()%></option>
                                        <%
                                                }else{
                                        %>
                                                <option value="<%=teacher.getId()%>"><%=teacher.getName()%></option>
                                        <%
                                                    }}}
                                        %>
                                    </select>
                            </div>
                            <div class="form-group">
                                <label for="turma">Horário</label>
                                <span><%=aulas[n].getClass_hour()%></span>
                            </div>
                        </div>
                        <%
                            }
                        %>
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