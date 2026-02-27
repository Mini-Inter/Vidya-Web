<%@ page import="com.school.miniinter.models.Subject.Subject" %>
<div id="overlay" class="overlay">
  <div class="popup">
    <h3>Selecione a disciplina:</h3>
    <%
      for(Subject s: subjects){%>
        <a href="changeSubject?subject=<%=s.getId()%>">
          <button class="disciplinaBtn" id="disciplinaBtn" value="<%=s.getId()%>"><%=s.getName()%></button>
        </a>
    <%}%>

  </div>
</div>

<script>
  const abrirPopup = document.getElementById("abrirPopup");
  const overlay = document.getElementById("overlay");
  const botoes = document.querySelectorAll(".disciplinaBtn");
  const disciplinaAtual = document.getElementById("disciplinaAtual");

  // abrir pop up
  abrirPopup.addEventListener("click", function (e) {
    e.preventDefault(); // impede o link de subir a página
    overlay.classList.add("active");
  });

  // selecionar disciplina
  botoes.forEach(function (botao) {
    botao.addEventListener("click", function () {

      // pega o nome da disciplina clicada
      const nomeDisciplina = this.innerText;

      // atualiza na tela
      disciplinaAtual.textContent = nomeDisciplina;

      // fecha o popup
      overlay.classList.remove("active");
  })
  });

  // fechar clicando fora
  overlay.addEventListener("click", function (e) {
    if (e.target === overlay) {
      overlay.classList.remove("active");
    }
  });
</script>
