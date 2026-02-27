<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<aside class="sidebar">
    <div class="logo">
        <img class="logo-icon" src="<%=request.getContextPath()%>/assets/assetsTeacher/logoVidya.png">
        <div class="logo-text">
            <h1>vidya</h1>
            <p>Plataforma escolar</p>
        </div>
    </div>

    <img class="line" src="<%=request.getContextPath()%>/assets/assetsTeacher/linha.png" alt="divisor">

    <nav class="nav-menu">
        <a href="#" class="nav-item active">
            <img class="icon" src="<%=request.getContextPath()%>/assets/assetsTeacher/homeIcon.png">
            <span class="text">Home</span>
        </a>
        <a href="meusAlunos.html" class="nav-item">
            <img class="icon" src="<%=request.getContextPath()%>/assets/assetsTeacher/alunosIcon.png">
            <span class="text">Alunos</span>
        </a>
        <a href="lancarNotas.html" class="nav-item">
            <img class="icon" src="<%=request.getContextPath()%>/assets/assetsTeacher/notasIcon.png">
            <span class="text">Notas</span>
        </a>
        <a href="observacoes.html" class="nav-item">
            <img class="icon" src="<%=request.getContextPath()%>/assets/assetsTeacher/obsIcon.png">
            <span class="text">Observações</span>
        </a>
    </nav>

    <div class="sidebar-footer">
        <a href="#" class="nav-item trocar" id="abrirPopup">
            <img class="icon" src="<%=request.getContextPath()%>/assets/assetsTeacher/trocarIcon.png">
            <span class="text">Trocar disciplina</span>
        </a>
        <a href="perfilProf.html" class="nav-item">
            <img class="icon" src="<%=request.getContextPath()%>/assets/assetsTeacher/perfilbranco.png">
            <span class="text">Perfil</span>
        </a>
        <a href="/index.jsp" class="nav-item logout">
            <img class="icon" src="<%=request.getContextPath()%>/assets/assetsTeacher/sairIcon.png">
            <span class="text">Sair da conta</span>
        </a>
    </div>

</aside>
