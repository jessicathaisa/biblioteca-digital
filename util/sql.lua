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

function sql.cadastraEvento(nm_congresso, ds_area)
	local query = string.format("insert into congresso (nm_congresso, ds_area)"
  							  .."VALUES ('%s','%s')",
								nm_congresso, ds_area)

	return sql.realizaConsulta(query)
end

function sql.getEventos()
	return sql.realizaConsulta("select * from congresso")
end

function sql.cadastraEdicao(id_congresso, ds_ano)
	local query = string.format("insert into edicao (id_congresso, nm_edicao, ds_ano)"
  							  .."VALUES ('%s','%s','%s')",
								id_congresso, ds_ano, ds_ano)

	return sql.realizaConsulta(query)
end

return sql

