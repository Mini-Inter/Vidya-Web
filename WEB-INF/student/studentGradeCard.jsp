<%@ page import="java.util.List" %>
<%@ page import="com.school.miniinter.models.Grades.GradeForSubject" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    request.setAttribute("active", "gradeCards");

    List<GradeForSubject> gradeForSubjects = (List<GradeForSubject>) request.getAttribute("GradeCard");
%>
<head>
    <meta charset="UTF-8">
    <link rel="shortcut icon" href="${pageContext.request.contextPath}/assets/imgs/vidya.svg" type="image/x-icon">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Vidya - Aluno</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/geral/link.css">
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/css/cssStudent/notas.css">
</head>
<body>
    <div class="container">

        <%@ include file="/common/sidebarStudent.jsp"%>

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