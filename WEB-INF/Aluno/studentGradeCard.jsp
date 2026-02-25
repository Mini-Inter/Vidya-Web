<%@ page import="java.util.List" %>
<%@ page import="com.school.miniinter.models.Grades.GradeForSubject" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    List<GradeForSubject> gradeForSubjects =
            (List<GradeForSubject>) request.getAttribute("GradeCard");
%>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Vidya - Aluno</title>
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/css/cssStudent/notas.css">
</head>
<body>
    <div class="container">
        <aside class="sidebar">
            <div class="logo">
                <img class="logo-icon" src="${pageContext.request.contextPath}/assets/assetsStudent/Vydia-logo.jpg">
                <div class="logo-text">
                    <h1>vidya</h1>
                    <p>Plataforma escolar</p>
                </div>
            </div>

            <img class="line" src="${pageContext.request.contextPath}/assets/assetsStudent/navbar-linha.png" alt="divisor">

            <nav class="nav-menu">
                <a href="homeStudent" class="nav-item">
                    <img class="icon" src="${pageContext.request.contextPath}/assets/assetsStudent/navbar-home.png">
                    <span class="text">Home</span>
                </a>
                <a href="gradeCard" class="nav-item">
                    <img class="icon" src="${pageContext.request.contextPath}/assets/assetsStudent/navbar-notas.png">
                    <span class="text">Notas</span>
                </a>
                <a href="observations" class="nav-item">
                    <img class="icon" src="${pageContext.request.contextPath}/assets/assetsStudent/navbar-observacoes.png">
                    <span class="text">Observações</span>
                </a>
                <a href="studentSubjects" class="nav-item ">
                    <img class="icon" src="${pageContext.request.contextPath}/assets/assetsStudent/navbar-disciplinas.png">
                    <span class="text">Disciplinas</span>
                </a>
            </nav>

            <div class="sidebar-footer">
                <a href="profileStudent" class="nav-item active">
                    <img class="icon" src="${pageContext.request.contextPath}/assets/assetsStudent/navbar-perfil.png">
                    <span class="text">Perfil</span>
                </a>
                <a href="#" class="nav-item logout">
                    <img class="icon" src="${pageContext.request.contextPath}/assets/assetsStudent/navbar-exit.png">
                    <span class="text">Sair da conta</span>
                </a>
            </div>

        </aside>

        <main class="main-content">
            <div class="page-header">
                <h1>Boletim</h1>
                <a href="generateGradeCard">
                    <button class="btn-generate">
                        <img class="icon-generate" src="${pageContext.request.contextPath}/assets/assetsStudent/gerarboletim.png"> Gerar Boletim
                    </button>
                </a>
            </div>

            <div class="table-container">
                <table class="boletim-table">
                    <thead>
                        <tr>
                            <th>Disciplina</th>
                            <th>Nota 1º Sem</th>
                            <th>Nota 2º Sem</th>
                            <th>Nota Final</th>
                            <th>Situação</th>
                        </tr>
                    </thead>
                    <tbody>
                    <%
                        int n = 1;
                        for(GradeForSubject g: gradeForSubjects){
                            if(n%2 != 0){
                    %>
                        <tr class="row-normal">
                            <td class="discipline-name"><%=g.getSubject()%></td>
                            <td class="grade"><%if(g.getN1() == -1.0){%><p>-</p><%}else{%><%=g.getN1()%><%}%></td>
                            <td class="grade"><%if(g.getN2() == -1.0){%><p>-</p><%}else{%><%=g.getN2()%><%}%></td>
                            <td class="grade"><%=g.getAverage()%></td>
                            <td class="status approved"><%=g.getSituation()%></td>
                        </tr>
                    <%
                            }else{%>
                        <tr class="row-alternate">
                            <td class="discipline-name"><%=g.getSubject()%></td>
                            <td class="grade"><%if(g.getN1() == -1.0){%><p>-</p><%}else{%><%=g.getN1()%><%}%></td>
                            <td class="grade"><%if(g.getN2() == -1.0){%><p>-</p><%}else{%><%=g.getN2()%><%}%></td>
                            <td class="grade"><%=g.getAverage()%></td>
                            <td class="status approved"><%=g.getSituation()%></td>
                        </tr>
                            <%}
                            n++;
                        }
                    %>
                    </tbody>
                </table>
            </div>

            <div class="formula-card">
                <div class="formula-content">
                    <div class="formula-text">
                        <span class="formula-title">Nota Final</span>
                        <span class="formula-equals">=</span>
                        <div class="formula-fraction">
                            <div class="fraction-numerator">Nota 1º Sem + Nota 2º Sem</div>
                            <div class="fraction-denominator">2</div>
                        </div>
                    </div>
                </div>
            </div>
        </main>
    </div>
</body>
</html>