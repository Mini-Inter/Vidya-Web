<%@ page import="java.util.List" %>
<%@ page import="com.school.miniinter.models.Reports.Reports" %>
<%@ page import="com.school.miniinter.models.Students.Students" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Vidya - CRUD</title>
    <link rel="stylesheet" href="../css/addEdit.css">
</head>
<%
    String active = "reports";
    Reports reports = (Reports) session.getAttribute("report");

    List<Students> students = (List<Students>) session.getAttribute("students");
    String[] students_report = (String[]) session.getAttribute("students_report");
%>
<body>
    <div class="container">

        <%@include file="../../../common/sidebarAdmin.jsp"%>
        
        <main class="main-content">

            <h1>Observações</h1>
            <h4>Editar observação</h4>

            <div class="form-add">
                <div class="form-card">

                    <form class="student-form">

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
                                <label for="description">Descrição </label>
                                <input type="text" id="description" name="description" value="<%=reports.getDescription()%>" required>
                            </div>
                        </div>

                        <div class="form-row">
                            <div class="form-group">
                                <label for="type">Tipo </label>
                                <input type="text" id="type" name="type" value="<%=reports.getType()%>" required>
                            </div>
                        </div>

                        <div class="form-actions">
                            <button type="submit" class="btn btn-primary">
                                <span>Editar</span>
                            </button>
                            <form action="<%=request.getContextPath()%>/adminReports?type=noot">
                                <input type="submit" value="Cancelar" class="btn btn-secundary">
                            </form>
                        </div>
                    </form>
                </div>
            </div>
        </main>
    </div>
</body>
</html>