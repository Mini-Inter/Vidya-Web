<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
  String error = String.valueOf(session.getAttribute("error"));
  if (!error.equals("null")) {
%>
<p style="color: #30BDBD; text-align: center; margin: 1em"><%=error%></p>
<%
    session.setAttribute("error", null);
  }
%>
