#!/usr/bin/env cgilua.cgi

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN"
   "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head>
    <title>Cadastrar Evento</title>
    <%
    require"cgilua.cookies"
    if cgilua.POST.user then
        cgilua.cookies.sethtml("cookie_kepler", cgilua.POST.user)
    end
    %>
</head>

<body>

<%

cgilua.print("<h1>Cadastrar Evento</h1>")

%>

<form method="post" action="" >
    Nome: <input name="nome" maxlength="20" size="20"><br />
    Sigla: <input name="sigla" maxlength="20" size="20"><br />
    Resumo: <input name="resumo" maxlength="140" size="140"><br />
    <input type="submit" value="Confirmar">
    <input type="reset" value="Resetar">
</form>

<%

if cgilua.POST.nome and cgilua.POST.sigla and cgilua.POST.resumo then
	local sql = require "util/sql"
	sql.cadastraEvento(cgilua.POST.nome, cgilua.POST.resumo)

	cgilua.print("<p>Cadastrado com sucesso!</p>")
end

%>

</body>
</html>
