#!/usr/bin/env cgilua.cgi

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN"
   "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head>
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

cgilua.print("<h1>Biblioteca Digital</h1>")

for c in sql.realizaConsulta("select * from congresso") do
    cgilua.print("<p><a href=congresso.lp?congresso=" .. c.id_congresso ..
        ">" .. c.nm_congresso .. "</a></p>")
end

%>

</body>
</html>
