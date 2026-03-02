<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<aside class="sidebar">
  <div class="logo">
    <img alt="" class="logo-icon" src="${pageContext.request.contextPath}/assets/AdminAssets/Vydia-logo.jpg"></img alt="">
    <div class="logo-text">
      <h1>vidya</h1>
      <p>Plataforma escolar</p>
    </div>
  </div>

  <img class="line" src="${pageContext.request.contextPath}/assets/AdminAssets/navbar-linha.png" alt="divisor">

  <nav class="nav-menu">
    <a href="${pageContext.request.contextPath}/adminStudents" class="nav-item ${active == "students" ? "active" : ""}">
      <img alt="" class="icon" src="${pageContext.request.contextPath}/assets/AdminAssets/navbar-aluno.png">
        <span class="text">Alunos</span>
    </a>
    <a href="${pageContext.request.contextPath}/adminTeachers" class="nav-item ${active == "teachers" ? "active" : ""}">
      <img alt="" class="icon" src="${pageContext.request.contextPath}/assets/AdminAssets/navbar-prof.png"></img alt="">
      <span class="text">Professores</span>
    </a>
    <a href="${pageContext.request.contextPath}/adminSubjects" class="nav-item ${active == "subjects" ? "active" : ""}">
      <img alt="" class="icon" src="${pageContext.request.contextPath}/assets/AdminAssets/navbar-disciplinas.png"></img alt="">
      <span class="text">Matérias</span>
    </a>
    <a href="${pageContext.request.contextPath}/adminClasses" class="nav-item ${active == "classes" ? "active" : ""}">
      <img alt="" class="icon" src="${pageContext.request.contextPath}/assets/AdminAssets/navbar-turma.png"></img alt="">
      <span class="text">Turmas</span>
    </a>
    <a href="${pageContext.request.contextPath}/adminReports" class="nav-item ${active == "reports" ? "active" : ""}">
      <img alt="" class="icon" src="${pageContext.request.contextPath}/assets/AdminAssets/navbar-observacoes.png"></img alt="">
      <span class="text">Observações</span>
    </a>
    <a href="${pageContext.request.contextPath}/adminGuardians" class="nav-item ${active == "guardians" ? "active" : ""}">
      <img alt="" class="icon" src="${pageContext.request.contextPath}/assets/AdminAssets/navbar-responsaveis.png"></img alt="">
      <span class="text">Responsáveis</span>
    </a>
  </nav>

  <div class="sidebar-footer">
    <a href="${pageContext.request.contextPath}/Inicio/loginaa.jsp" class="nav-item logout">
      <img alt="" class="icon" src="${pageContext.request.contextPath}/assets/AdminAssets/navbar-exit.png">
      <span class="text">Sair da conta</span>
    </a>
  </div>

</aside>