<%@ page import="com.school.miniinter.models.Subject.Subject" %>
<%@ page import="com.school.miniinter.models.Class.Class" %>
<%@ page import="java.util.List" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Vidya - CRUD</title>
    <link rel="stylesheet" href="../css/addEdit.css">
</head>
<%
    String active = "subjects";
    Subject subject = (Subject) session.getAttribute("subject");

    List<Class> classes = (List<Class>)  session.getAttribute("classes");
%>
<body>
    <div class="container">
        
        <%@include file="../../../common/sidebarAdmin.jsp"%>

        <main class="main-content">

            <h1>Matérias</h1>
            <h4>Editar matéria</h4>

            <div class="form-add">
                <div class="form-card">

                    <form class="student-form" action="<%=request.getContextPath()%>/adminSubjects?type=updateSubject" method="post">
                        <input name="subject" id="subject" value="<%=subject.getId()%>" type="hidden">

                        <div class="form-row">

                            <div class="form-group">
                                <label for="name">Nome da matéria </label>
                                <input type="text" id="name" name="name" value="<%=subject.getName()%>" required>
                            </div>
                            
                            <div class="form-group">
                                    <label for="description">Descrição </label>
                                    <input type="text" id="description" name="description" value="<%=subject.getDescription()%>" required>
                            </div>
                        </div>

                        <div class="form-actions">
                            <button type="submit" class="btn btn-primary">
                                <span>Editar</span>
                            </button>
                            <form action="<%=request.getContextPath()%>/adminSubjects?type=noot">
                                <button class="btn btn-secundary">
                                    Cancelar
                                </button>
                            </form>
                        </div>
                    </form>
                </div>
            </div>
        </main>
    </div>
</body>
</html>