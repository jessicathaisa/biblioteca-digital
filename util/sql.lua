-- Sistema Biblioteca-Digital
--
-- Módulo auxiliar para realizar consultas no banco de dados

local sql = {}

local env = require("luasql.mysql").mysql()

function sql.realizaConsulta(comando)
    local conexao = assert(env:connect("biblioteca-digital", "root", "123456",
        "localhost", 3306))
    local resultado, erro = conexao:execute(comando)
    conexao:close()
    return function()
        return resultado:fetch({}, "a")
    end
end

function sql.cadastraEvento(nm_congresso)
	local query = string.format("insert into congresso (id_congresso, nm_congresso, ds_area)"
  							  .."VALUES ('%s','%s','%s')",
								0, nm_congresso, "empty")
	sql.realizaConsulta(query)
end

return sql

