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

local id_congresso = cgilua.QUERY.congresso
local congresso = sql.realizaConsulta("select * from congresso " ..
    "where id_congresso = " .. id_congresso)()

cgilua.print("<h2>Biblioteca Digital</h2>")
cgilua.print("<h1>" .. congresso.nm_congresso .. "</h1>")
cgilua.print("<h2>Mais Citados</h2")

for artigo in sql.realizaConsulta("select distinct id_artigo, ds_titulo, ds_resumo, a.ds_ano, nu_qtd_citacoes, nu_qtd_downloads from artigo a, edicao where id_congresso = " .. id_congresso .. " order by nu_qtd_citacoes desc") do
    cgilua.print("<p>" .. artigo.ds_titulo)
    cgilua.print(", " .. artigo.ds_ano)
    local autores = ""
    for autor in sql.realizaConsulta("select * from autor, autor_artigo where " ..
        "id_artigo = " .. artigo.id_artigo) do
        autores = autores .. ", " .. autor.nm_autor
    end
    cgilua.print(autores)
    cgilua.print(", citações: " .. artigo.nu_qtd_citacoes)
    cgilua.print(", downloads: " .. artigo.nu_qtd_downloads)
    cgilua.print("<br />Resumo: <br />" .. artigo.ds_resumo)
    cgilua.print("</p>")
end

%>

</body>
</html>
