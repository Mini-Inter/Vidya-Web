<%@ page import="java.util.List" %>
<%@ page import="com.school.miniinter.models.Reports.Reports" %>
<%@ page import="com.school.miniinter.models.Students.Students" %>
<%@ page import="com.school.miniinter.models.Teacher.Teacher" %>
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
    Reports reports = (Reports) session.getAttribute("report");

    List<Students> students = (List<Students>) session.getAttribute("students");
    String[] students_report = (String[])
            session.getAttribute("students_report");
    List<Teacher> teachers = (List<Teacher>) session.getAttribute("teachers");
%>
<body>
    <div class="container">

        <%@include file="/common/sidebarAdmin.jsp"%>
        
        <main class="main-content">

            <h1>Observações</h1>
            <h4>Editar observação</h4>

            <div class="form-add">
                <div class="form-card">

                    <form class="student-form" action="${pageContext.request.contextPath}/adminReports?type=update" method="post">
                        <input type="hidden" name="report" value="<%=reports.getId()%>">
                        <div class="form-row">
                            <div class="form-group">
                                <label for="students">Aluno(s)</label>
                                <select name="students" id="students" multiple size="1">
                                    <%
                                        boolean passou = false;
                                        for (Students student : students) {
                                            for(String nome: students_report){
                                                if(nome.equals(student.getFull_name())) {
                                    %>
                                    <option selected value="<%=student.getId_student()%>"><%=student.getFull_name()%></option>
                                    <%              passou = true;
                                        break;
                                    }
                                    }
                                        if(!passou){
                                    %>
                                    <option value="<%=student.getId_student()%>"><%=student.getFull_name()%></option>
                                    <%
                                            }
                                            passou = false;
                                        }
                                    %>
                                </select>
                            </div>
                            <div class="form-group">
                                <label for="teacher">Professor </label>
                                <select id="teacher"
                                        name="teacher">
                                    <%
                                        for (Teacher teacher : teachers) {
                                            if(reports.getFk_teachers() ==
                                                    teacher.getId()) {
                                    %>
                                    <option selected
                                            value="<%=teacher.getId()%>"><%=teacher.getName()%></option>
                                    <%
                                    }
                                        else{
                                    %>
                                    <option value="<%=teacher.getId()%>"><%=teacher.getName()%></option>
                                    <%
                                            }
                                        }
                                    %>
                                </select>
                            </div>
                        </div>

                        <div class="form-row">
                            <div class="form-group">
                                <label for="typeReport">Tipo </label>
                                <input type="text" id="typeReport"
                                       name="typeReport" value="<%=reports.getType()%>" required>
                            </div>
                            <div class="form-group">
                                <label for="description">Descrição </label>
                                <input type="text" id="description" name="description" value="<%=reports.getDescription()%>" required>
                            </div>
                        </div>

                        <div class="form-actions">
                            <button type="submit" class="btn btn-primary">
                                <span>Editar</span>
                            </button>
                            <a href="${pageContext.request.contextPath}/adminReports?type=noot" class="btn btn-secundary">Cancelar</a>
                        </div>
                    </form>
                </div>
            </div>
        </main>
    </div>
</body>
</html>