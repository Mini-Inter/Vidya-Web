<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
        <a href="homeStudent" class="nav-item ${active == "home" ? "active" : ""}">
            <img class="icon" src="${pageContext.request.contextPath}/assets/assetsStudent/navbar-home.png">
            <span class="text">Home</span>
        </a>
        <a href="gradeCard" class="nav-item ${active == "gradeCards" ? "active" : ""}">
            <img class="icon" src="${pageContext.request.contextPath}/assets/assetsStudent/navbar-notas.png">
            <span class="text">Notas</span>
        </a>
        <a href="observations" class="nav-item ${active == "observations" ? "active" : ""}">
            <img class="icon" src="${pageContext.request.contextPath}/assets/assetsStudent/navbar-observacoes.png">
            <span class="text">Observações</span>
        </a>
        <a href="studentSubjects" class="nav-item ${active == "subjects" ? "active" : ""}">
            <img class="icon" src="${pageContext.request.contextPath}/assets/assetsStudent/navbar-disciplinas.png">
            <span class="text">Disciplinas</span>
        </a>
    </nav>

    <div class="sidebar-footer">
        <a href="profileStudent" class="nav-item ${active == "profile" ? "active" : ""}">
            <img class="icon" src="${pageContext.request.contextPath}/assets/assetsStudent/navbar-perfil.png">
            <span class="text">Perfil</span>
        </a>
        <a href="logout?type=student" class="nav-item logout">
            <img class="icon" src="${pageContext.request.contextPath}/assets/assetsStudent/navbar-exit.png">
            <span class="text">Sair da conta</span>
        </a>
    </div>

</aside>
