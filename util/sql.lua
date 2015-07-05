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

return sql

