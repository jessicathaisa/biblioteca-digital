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

local sql = require "util/sql"
cgilua.print("<h1>Cadastrar Edição</h1>")

%>

<form method="post" action="" >
    Evento: 
	<select name="evento">
		<%		
			local eventos = sql.getEventos()
			
			for c in eventos do
				cgilua.print("<option value='" .. c.id_congresso .. "'>" .. c.nm_congresso .. "</option>")
			end
		%>  		
	</select><br />
    Ano: <input name="ano" maxlength="4" size="4"><br /><br />
    <input type="submit" value="Confirmar">
    <input type="reset" value="Resetar">
</form>

<%

if cgilua.POST.evento and cgilua.POST.ano then

	sql.cadastraEdicao(cgilua.POST.evento, cgilua.POST.ano)

	cgilua.print("<p>Cadastrado com sucesso!</p>")
end

%>

</body>
</html>
