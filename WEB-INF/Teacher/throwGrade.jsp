<%@ page import="java.util.List" %>
<%@ page import="com.school.miniinter.models.Class.Class" %>
<%@ page import="com.school.miniinter.models.Students.GradeForStudent" %>
<%@ page import="com.school.miniinter.models.Subject.Subject" %>
<%@ page import="java.util.LinkedList" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    request.setAttribute("active", "grade");
    List<Class> listClass = (List<Class>) request.getAttribute("listClass");
    Integer idClass = (Integer) request.getAttribute("id_class");
    List<GradeForStudent> listGradeByStudent = (List<GradeForStudent>)
            request.getAttribute("listGradeByStudent");
    LinkedList<Subject> subjects = (LinkedList<Subject>)
            session.getAttribute("subjects");
    Integer idSubject = (Integer) session.getAttribute("subject");
    String error = String.valueOf(session.getAttribute("error"));
%>
<html lang="en">

<head>
    <meta charset="UTF-8">
<link rel="shortcut icon" href="${pageContext.request.contextPath}/assets/imgs/vidya.svg" type="image/x-icon">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/css/cssTeacher/throwGrade.css">
    <title>Vidya - Professor</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/geral/default.css">
</head>

<body>
    <div class="container">

        <%@include file="../../common/sidebarTeacher.jsp"%>
        <%
            if (!error.equals("null")) {
        %>
            <p style="color: red"><%=error%></p>
        <%
    session.setAttribute("error", null);
            }%>

        <main class="main-content">
            <header class="page-header">
                <h1>Lançar Notas</h1>
            </header>

            <div class="container">

                <div class="card">

                    <h3>Selecione a turma</h3>

                    <form action="<%=request.getContextPath()%>/updateGrade?changeClass=1"
                          method="post">
                        <div class="select-wrapper">
                            <select name="class" id="class" onchange="this.form.submit()">
                                <%
                                    for(Class c:listClass){
                                        if(c.getId() == idClass){%>
                                    <option selected value="<%=c.getId()%>"><%=c%></option>
                                <%
                                        }else{%>
                                <option value="<%=c.getId()%>"><%=c%></option>
                                        <%}
                                    }
                                %>
                            </select>
                        </div>
                    </form>


                    <div class="table">

                        <div class="table-header">
                            <span>Aluno</span>
                            <span>Nota 1° Sem</span>
                            <span>Nota 2° Sem</span>
                            <span>Nota Final</span>
                        </div>
                        <%
                            int counter = 0;
                            for(GradeForStudent g: listGradeByStudent){
                                if(counter%2==0){
                        %>
                            <div class="table-row">

                                <span class="aluno"><%=g.getFull_name()%></span>

                                <form action="${pageContext.request.contextPath}/updateGrade" method="post">
                                    <input type="hidden" value="<%=g.getId_student()%>" name="student">
                                    <input type="hidden" value="<%=g.getIdN1()%>" name="idData">
                                    <input type="hidden" value="<%=g.getN1()%>" name="value">
                                    <input type="hidden" value="1" name="type">
                                    <div class="nota-box">
                                        <input type="text" value="<%if(g.getN1()== -1.0){%>-<%}else{%><%=g.getN1()%><%}%>" name="data">
                                        <button type="submit" class="save-btn">
                                            <img width="22px" src="${pageContext.request.contextPath}/assets/assetsTeacher/check-mark.svg" alt="✓">
                                        </button>
                                    </div>
                                </form>
                                <form action="${pageContext.request.contextPath}/updateGrade" method="post">
                                    <input type="hidden" value="<%=g.getId_student()%>" name="student">
                                    <input type="hidden" value="<%=g.getIdN2()%>" name="idData">
                                    <input type="hidden" value="2" name="type">
                                    <input type="hidden" value="<%=g.getN2()%>" name="value">
                                    <div class="nota-box">
                                        <input type="text" value="<%if(g.getN2()== -1.0){%>-<%}else{%><%=g.getN2()%><%}%>" name="data">
                                        <button type="submit" class="save-btn">
                                            <img width="22px" src="${pageContext.request.contextPath}/assets/assetsTeacher/check-mark.svg" alt="✓">
                                        </button>
                                    </div>
                                </form>

                                <span class="nota-final"><%if(g.getAverage()== null){%><p>-</p><%}else{%><%=g.getAverage()%><%}%></span>
                            </div>
                        <%
                                }else{%>
                            <div class="table-row alt">

                                <span class="aluno"><%=g.getFull_name()%></span>

                                <form action="${pageContext.request.contextPath}/updateGrade" method="post">
                                    <input type="hidden" value="<%=g.getId_student()%>" name="student">
                                    <input type="hidden" value="<%=g.getIdN1()%>" name="idData">
                                    <input type="hidden" value="<%=g.getN1()%>" name="value">
                                    <input type="hidden" value="1" name="type">
                                    <div class="nota-box">
                                        <input type="text" value="<%if(g.getN1()== -1.0){%>-<%}else{%><%=g.getN1()%><%}%>" name="data">
                                        <button type="submit" class="save-btn">
                                            <img width="22px" src="${pageContext.request.contextPath}/assets/assetsTeacher/check-mark.svg" alt="✓">
                                        </button>
                                        </input>
                                    </div>
                                </form>
                                <form action="${pageContext.request.contextPath}/updateGrade" method="post">
                                    <input type="hidden" value="<%=g.getId_student()%>" name="student">
                                    <input type="hidden" value="<%=g.getIdN2()%>" name="idData">
                                    <input type="hidden" value="2" name="type">
                                    <input type="hidden" value="<%=g.getN2()%>" name="value">
                                    <div class="nota-box">
                                        <input type="text" value="<%if(g.getN2()== -1.0){%>-<%}else{%><%=g.getN2()%><%}%>" name="data">
                                        <button type="submit" class="save-btn">
                                            <img width="22px" src="${pageContext.request.contextPath}/assets/assetsTeacher/check-mark.svg" alt="✓">
                                        </button>
                                    </div>
                                </form>
                                <span class="nota-final"><%if(g.getAverage()== null){%><p>-</p><%}else{%><%=g.getAverage()%><%}%></span>
                            </div>
                                <%}
                                counter++;
                            }
                        %>
                    </div>
                </div>
            </div>
           <%@ include file="../../common/sidebarTeacherChangeSubject.jsp"%>
        </main>
</body>

</html>