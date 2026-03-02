<%@ page import="com.school.miniinter.models.Teacher.CompleteInfo" %>
<%@ page import="com.school.miniinter.models.Teacher.AmountStudentByTeacher" %>
<%@ page import="java.util.List" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    request.setAttribute("active", "profile");
    CompleteInfo completeInfo =
            (CompleteInfo) request.getAttribute("completeInfoTeacher");
    List<AmountStudentByTeacher> amountStudentByClass =
            (List<AmountStudentByTeacher>) request.getAttribute("amountStudentByTeacher");
    List<Subject> subjects = (List<Subject>) session.getAttribute("subjects");
    Integer idSubject = (Integer) session.getAttribute("subject");
%>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/css/cssTeacher/perfilProf.css">
    <title>Vidya - Professor</title>
</head>

<body>
    <div class="container">

        <%@include file="../../common/sidebarTeacher.jsp"%>

        <main class="main-content">
            <header class="page-header">
                <h1>Meu Perfil</h1>
            </header>

            <div class="profile-card">
                <div class="profile-photo">
                    <form action="uploadImage"
                          method="post" enctype="multipart/form-data"
                          id="form-image">
                        <label class="photo-placeholder" for="updateImage">
                            <%
                                if(completeInfo.getUrlImage() != null){%>
                            <img src="<%=completeInfo.getUrlImage()%>" alt="sua imagem">
                            <%}%>
                        </label>
                        <input type="hidden" name="type" value="teacher">
                        <input type="file" name="image" accept="image/*"
                               onchange="this.form.submit()"
                               value="Editar foto" id="updateImage" hidden>
                    </form>
                </div>

                <div class="profile-info">
                    <h3>Prof. <%=completeInfo.getFull_name()%></h3>

                    <div class="info-grid">
                        <div class="info-item">
                            <label>Disciplina:</label>
                            <span
                                    class="info-value"><%=completeInfo.getSubject()%></span>
                        </div>
                        <div class="info-item">
                            <label>Data de admissão:</label>
                            <span
                                    class="info-value"><%=completeInfo.getCreated_at()%></span>
                        </div>

                        <div class="info-item">
                            <label>Ano letivo:</label>
                            <span class="info-value"><%=completeInfo.getSchool_year()%></span>
                        </div>
                        <div class="info-item">
                            <label>Status:</label>
                            <span class="info-value"><%=completeInfo.getStatus()%></span>
                        </div>

                    </div>
                </div>
            </div>

            <div class="info-card">

                <div class="title-personal-info">
                    <img class="info-icon" src="<%=request.getContextPath()%>/assets/assetsTeacher/infospess.png">

                    <h3>Informações Pessoais</h3>
                </div>

                <div class="info-grid">
                    <div class="personal-info-item">
                        <div class="personal-info-label">
                            <img class="icon" src="<%=request.getContextPath()%>/assets/assetsTeacher/calendar.png">
                            <span>DATA DE NASCIMENTO</span>
                        </div>
                        <div class="personal-info-value"><%=completeInfo.getBirth_date()%></div>
                    </div>

                    <div class="personal-info-item">
                        <div class="personal-info-label">
                            <img class="icon" src="<%=request.getContextPath()%>/assets/assetsTeacher/mail.png">
                            <span>E-MAIL</span>
                        </div>
                        <div class="personal-info-value"><%=completeInfo.getLogin()%></div>
                    </div>

                    <div class="personal-info-item">
                        <div class="personal-info-label">
                            <img class="icon" src="<%=request.getContextPath()%>/assets/assetsTeacher/phone.png">
                            <span>TELEFONE</span>
                        </div>
                        <div class="personal-info-value">(<%=completeInfo.getPhone().substring(0,2)%>)
                            <%=completeInfo.getPhone().substring(2,7)
                            %>-<%=completeInfo.getPhone().substring(7,11)%></div>
                    </div>

                    <div class="personal-info-item">
                        <div class="personal-info-label">
                            <img class="icon" src="<%=request.getContextPath()%>/assets/assetsTeacher/loc.png">
                            <span>ENDEREÇO</span>
                        </div>
                        <div class="personal-info-value"><%=completeInfo.getFormated_address()%></div>
                    </div>
                </div>
            </div>

            <div class="turmas-card">
                <h3>Minhas Turmas</h3>

                <%
                    for(AmountStudentByTeacher classesAndStudents: amountStudentByClass){
                %>
                <div class="turma-item">
                    <span><%=classesAndStudents.getTeacherClass()%></span>
                    <div class="badge"><%=classesAndStudents.getAmountStudent()%></div>
                </div>
                <%
                    }
                %>

            </div>

            <%@include file="../../common/sidebarTeacherChangeSubject.jsp"%>

        </main>
    </div>

</body>

</html>