<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Vidya - CRUD</title>
    <link rel="stylesheet" href="../css/addEdit.css">
</head>
<%
    String active = "subjects";
%>
<body>
    <div class="container">
        
        <%@include file="../../common/sidebarAdmin.jsp"%>

        <main class="main-content">

            <h1>Matérias</h1>
            <h4>Adicionar nova matéria</h4>

            <div class="form-add">
                <div class="form-card">

                    <form class="student-form">

                        <div class="form-row">

                            <div class="form-group">
                                <label for="name">Nome da matéria </label>
                                <input type="text" id="name" name="name" placeholder="Ex: Geografia" required>
                            </div>
                            
                            <div class="form-group">
                                    <label for="description">Descrição </label>
                                    <input type="text" id="description" name="description" placeholder="Ex: Geografia do Brasil e do Mundo" required>
                            </div>
                        </div>

                        <div class="form-actions">
                            <button type="submit" class="btn btn-primary">
                                <span>Adicionar</span>
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