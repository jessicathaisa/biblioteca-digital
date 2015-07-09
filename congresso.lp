#!/usr/bin/env cgilua.cgi

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN"
   "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head>
    <meta http-equiv="Content-Type" content="text/html;UTF-8">
    <title>Biblioteca Digital</title>
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

local id = cgilua.QUERY.congresso
local congresso = sql.realizaConsulta("select * from congresso " ..
    "where id_congresso = " .. id)()

cgilua.print("<h2>Biblioteca Digital</h2>")
cgilua.print("<h1>" .. congresso.nm_congresso .. "</h1>")
cgilua.print("<p>" .. congresso.ds_area .. "</p>")
cgilua.print("<h3><a href=maiscitados.lp?congresso=" .. id .. ">Mais Citados</a></p>")
cgilua.print("<h3>Edições:</h3>")

for e in sql.realizaConsulta("select * from edicao where id_congresso = " .. id) do
    local link_edicao = "edicao.lp?congresso=" .. id .. "&edicao=" .. e.id_edicao
    cgilua.print("<p><a href=" .. link_edicao .. ">" .. e.ds_ano .. " - " .. e.nm_edicao
         .. "</a></p>")
end

%>

</body>
</html>
