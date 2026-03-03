<%@ page import="com.school.miniinter.models.Students.CompleteInfo" %>
<%@ page import="com.school.miniinter.models.Grades.SimpleGrade" %>
<%
    request.setAttribute("active", "profile");

    CompleteInfo completeInfo = (CompleteInfo)
            request.getAttribute("completeInfoStudent");
%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <link rel="shortcut icon" href="${pageContext.request.contextPath}/assets/imgs/vidya.svg" type="image/x-icon">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Vidya - Aluno</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/geral/link.css">
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/css/cssStudent/perfil.css">
</head>
<body>
    <div class="container">
        <%@ include file="/common/sidebarStudent.jsp"%>

        <main class="main-content">
            <header class="page-header">
                <h1>Meu Perfil</h1>
            </header>

            <div class="profile-card">
                <div class="profile-photo">
                    <form action="uploadImage"
                          method="post" enctype="multipart/form-data">
                        <label class="photo-placeholder" for="updateImage">
                        <%
                            if(completeInfo.getUrlImage() != null){%>
                        <img src="<%=completeInfo.getUrlImage()%>" alt="sua imagem">
                            <%}
                        %>
                        </label>
                        <input type="hidden" name="type" value="student">
                        <input type="file" name="image" accept="image/*"
                               onchange="this.form.submit()" id="updateImage"
                               value="Editar foto" hidden>

                    </form>
                </div>

                <div class="profile-info">
                    <h3><%=completeInfo.getFull_name()%></h3>
                    
                    <div class="info-grid">
                        <div class="info-item">
                            <label>Matrícula:</label>
                            <span class="info-value">#
                                <%=completeInfo.getId_student()%></span>
                        </div>
                        <div class="info-item">
                            <label>Responsável:</label>
                            <span class="info-value"><%=completeInfo.getFirstName_guardian()%></span>
                        </div>

                        <div class="info-item">
                            <label>Turma:</label>
                            <span class="info-value"><%=completeInfo.getStudentClass()%></span>
                        </div>
                        <div class="info-item">
                            <label>Data de cadastro:</label>
                            <span class="info-value"><%=completeInfo.getCreated_at()%></span>
                        </div>

                        <div class="info-item">
                            <label>Ano letivo:</label>
                            <span class="info-value"><%=completeInfo.getSchool_year()%></span>
                        </div>
                        <div class="info-item">
                            <label>Status:</label>
                            <span class="info-value">Ativo</span>
                        </div>
                    </div>
                </div>
            </div>

            <div class="info-card">

                <div class="title-personal-info">
                    <img class="info-icon" src="${pageContext.request.contextPath}/assets/assetsStudent/info.png">
                    
                    <h3>Informações Pessoais</h3>
                </div>

                <div class="info-grid">
                    <div class="personal-info-item">
                        <div class="personal-info-label">
                            <img class="icon" src="${pageContext.request.contextPath}/assets/assetsStudent/data.png">
                            <span>DATA DE NASCIMENTO</span>
                        </div>
                        <div
                                class="personal-info-value"><%=completeInfo.getBirth_date()%></div>
                    </div>

                    <div class="personal-info-item">
                        <div class="personal-info-label">
                            <img class="icon" src="${pageContext.request.contextPath}/assets/assetsStudent/email.png">
                            <span>E-MAIL</span>
                        </div>
                        <div class="personal-info-value"><%=completeInfo.getLogin()%>@vidya .org.br</div>
                    </div>

                    <div class="personal-info-item">
                        <div class="personal-info-label">
                            <img class="icon" src="${pageContext.request.contextPath}/assets/assetsStudent/telefone.png">
                            <span>TELEFONE</span>
                        </div>
                        <div
                                class="personal-info-value">(<%=completeInfo.getPhone().substring(0,2)%>)
                            <%=completeInfo.getPhone().substring(2,11)%></div>
                    </div>
                    <div class="personal-info-item">
                        <div class="personal-info-label">
                            <img class="icon" src="${pageContext.request.contextPath}/assets/assetsStudent/local.png">
                            <span>ENDEREÇO</span>
                        </div>
                        <div
                                class="personal-info-value"><%=completeInfo.getFormated_address()%></div>
                    </div>
                </div>
            </div>
        </main>
    </div>
</body>
</html>