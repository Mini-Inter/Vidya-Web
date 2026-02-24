<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<aside class="sidebar">
  <div class="logo">
    <img alt="" class="logo-icon" src="../admin/assets/Vydia-logo.jpg"></img alt="">
    <div class="logo-text">
      <h1>vidya</h1>
      <p>Plataforma escolar</p>
    </div>
  </div>

  <img class="line" src="../admin/assets/navbar-linha.png" alt="divisor">

  <nav class="nav-menu">
    <form action="<%=request.getContextPath()%>/adminStudents" method="post" class="nav-item <%if (active.equals("students")) {%>active<%}%>">
      <img alt="" class="icon" src="../admin/assets/navbar-aluno.png">
        <button type="submit"><span class="text">Alunos</span></button>
    </form>
    <form action="<%=request.getContextPath()%>/adminTeachers" method="post" class="nav-item <%if (active.equals("teachers")) {%>active<%}%>">
      <img alt="" class="icon" src="../admin/assets/navbar-prof.png"></img alt="">
      <button type="submit"><span class="text">Professores</span></button>
    </form>
    <form action="<%=request.getContextPath()%>/adminSubjects" method="post" class="nav-item <%if (active.equals("subjects")) {%>active<%}%>">
      <img alt="" class="icon" src="../admin/assets/navbar-disciplinas.png"></img alt="">
      <button type="submit"><span class="text">Matérias</span></button>
    </form>
    <form action="<%=request.getContextPath()%>/adminClasses" method="post" class="nav-item <%if (active.equals("classes")) {%>active<%}%>">
      <img alt="" class="icon" src="../admin/assets/navbar-turma.png"></img alt="">
      <button type="submit"><span class="text">Turmas</span></button>
    </form>
    <form action="<%=request.getContextPath()%>/adminReports" class="nav-item <%if (active.equals("reports")) {%>active<%}%> ">
      <img alt="" class="icon" src="../admin/assets/navbar-observacoes.png"></img alt="">
      <button type="submit"><span class="text">Observações</span></button>
    </form>
    <form action="<%=request.getContextPath()%>/adminGuardians" method="post" class="nav-item <%if (active.equals("guardians")) {%>active<%}%>">
      <img alt="" class="icon" src="../admin/assets/navbar-responsaveis.png"></img alt="">
      <button type="submit"><span class="text">Responsáveis</span></button>
    </form>
  </nav>

  <div class="sidebar-footer">
    <form action="<%=response.sendRedirect(request.getContextPath()+"/auth?type=loginAA")%>" class="nav-item logout">
      <img alt="" class="icon" src="../admin/assets/navbar-exit.png">
      <button type="submit"><span class="text">Sair da conta</span></button>
    </form>
  </div>

</aside>