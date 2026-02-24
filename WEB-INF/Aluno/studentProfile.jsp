<%@ page import="com.school.miniinter.models.Students.CompleteInfo" %>
<%
    CompleteInfo completeInfo = (CompleteInfo)
            request.getAttribute("completeInfoStudent");
%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Vidya - Aluno</title>
    <link rel="stylesheet" href="css/perfil.css">
</head>
<body>
    <div class="container">
        <aside class="sidebar">
            <div class="logo">
                <img class="logo-icon" src="assets/Vydia-logo.jpg">
                <div class="logo-text">
                    <h1>vidya</h1>
                    <p>Plataforma escolar</p>
                </div>
            </div>

            <img class="line" src="assets/navbar-linha.png" alt="divisor">

            <nav class="nav-menu">
                <a href="homeStudent" class="nav-item">
                    <img class="icon" src="assets/navbar-home.png">
                    <span class="text">Home</span>
                </a>
                <a href="gradeCard" class="nav-item">
                    <img class="icon" src="assets/navbar-notas.png">
                    <span class="text">Notas</span>
                </a>
                <a href="observations" class="nav-item">
                    <img class="icon" src="assets/navbar-observacoes.png">
                    <span class="text">Observações</span>
                </a>
                <a href="studentSubjects" class="nav-item ">
                    <img class="icon" src="assets/navbar-disciplinas.png">
                    <span class="text">Disciplinas</span>
                </a>
            </nav>

            <div class="sidebar-footer">
                <a href="profileStudent" class="nav-item active">
                    <img class="icon" src="assets/navbar-perfil.png">
                    <span class="text">Perfil</span>
                </a>
                <a href="#" class="nav-item logout">
                    <img class="icon" src="assets/navbar-exit.png">
                    <span class="text">Sair da conta</span>
                </a>
            </div>

        </aside>

        <main class="main-content">
            <header class="page-header">
                <h1>Meu Perfil</h1>
            </header>

            <div class="profile-card">
                <div class="profile-photo">
                    <div class="photo-placeholder">
                        Foto
                    </div>
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
                    <img class="info-icon" src="assets/info.png">
                    
                    <h3>Informações Pessoais</h3>
                </div>

                <div class="info-grid">
                    <div class="personal-info-item">
                        <div class="personal-info-label">
                            <img class="icon" src="assets/data.png">
                            <span>DATA DE NASCIMENTO</span>
                        </div>
                        <div
                                class="personal-info-value"><%=completeInfo.getBirth_date()%></div>
                    </div>

                    <div class="personal-info-item">
                        <div class="personal-info-label">
                            <img class="icon" src="assets/email.png">
                            <span>E-MAIL</span>
                        </div>
                        <div class="personal-info-value"><%=completeInfo.getLogin()%>@vidya .org.br</div>
                    </div>

                    <div class="personal-info-item">
                        <div class="personal-info-label">
                            <img class="icon" src="assets/telefone.png">
                            <span>TELEFONE</span>
                        </div>
                        <div
                                class="personal-info-value">(<%=completeInfo.getPhone().substring(0,2)%>)
                            <%=completeInfo.getPhone().substring(2,11)%></div>
                    </div>
<%--                    <div class="personal-info-item">--%>
<%--                        <div class="personal-info-label">--%>
<%--                            <img class="icon" src="assets/local.png">--%>
<%--                            <span>ENDEREÇO</span>--%>
<%--                        </div>--%>
<%--                        <div class="personal-info-value">São Paulo - SP</div>--%>
<%--                    </div>--%>
                </div>
            </div>
        </main>
    </div>
</body>
</html>