# Cenários no Momento da Arquitetura

## Cenários do Modelo

<table> <tr> <th>Título</th> <th align="left">Efetuar Login</th>
    </tr><tr>
      <td>Objetivo</td>
      <td>Registrar no cachê o usuário que se logou.</td>
    </tr><tr>
      <td>Contexto</td>
      <td>Pré-condição: Login no Sistema.</td>
    </tr><tr>
      <td>Atores</td>
      <td>Sistema e Base de Dados.</td>
    </tr><tr>
      <td>Recursos</td>
      <td>
        <ul>
          <li>Parâmetros: identificador (string) e senha (string).</li>
          <li>Cachê: identificador do usuário logado (string).</li>
          <li>Tabela de usuários.</li>
        </ul>
      </td>
    </tr><tr>
      <td>Exceções</td>
      <td>
        <ul>
          <li>Registro de usuário não encontrado. [Retorna erro de usuário não cadastrado]</li>
        </ul>
      </td>
    </tr><tr>
      <td>Episódios</td>
      <td>
        <ul>
          <li>Faz busca na tabela de usuários restringindo com base no identificador e na senha.</li>
          <li>Se encontrar um registro
            <ul>
              <li>Salva identificador do usuário logado no cache.</li>
            </ul>
          </li>
        </ul>
      </td>
    </tr><tr>
      <td>Restrição</td>
      <td>O sistema deve ser robusto.</td>
    </tr>
</table>

<table> <tr> <th>Título</th> <th align="left">Enviar Dados</th>
    </tr><tr>
      <td>Objetivo</td>
      <td>Enviar os dados de login para o e-mail do passado.</td>
    </tr><tr>
      <td>Contexto</td>
      <td>
        <ul>
          <li>Pré-condição: Esqueceu dos Dados.</li>
          <li>O e-mail passado deve estar cadastrado na base de dados.</li>
        </ul>
      </td>
    </tr><tr>
      <td>Atores</td>
      <td>Sistema, Base de Dados e Servidor de Email.</td>
    </tr><tr>
      <td>Recursos</td>
      <td>
        <ul>
          <li>Parâmetros: e-mail (string).</li>
          <li>Identificador (string) e senha (string).</li>
          <li>Tabela de usuários.</li>
        </ul>
      </td>
    </tr><tr>
      <td>Exceções</td>
      <td>
        <ul>
          <li>Registro de usuário não encontrado. [Retorna erro de email não cadastrado]</li>
          <li>Servidor de email offline. [Retorna erro de servidor offline]</li>
        </ul>
      </td>
    </tr><tr>
      <td>Episódios</td>
      <td>
        <ul>
          <li>Faz busca na tabela de usuários restringindo com base no email.</li>
          <li>Obtém o identificador e a senha do registro encontrado.</li>
          <li>Servidor de e-mail envia um e-mail com o identificado e a senha.</li>
        </ul>
      </td>
    </tr><tr>
      <td>Restrição</td>
      <td>O sistema deve ser robusto.</td>
    </tr>
</table>

<table> <tr> <th>Título</th> <th align="left">Modificar Registro de Senha</th>
    </tr><tr>
      <td>Objetivo</td>
      <td>Alterar a senha de um registro de usuário.</td>
    </tr><tr>
      <td>Contexto</td>
      <td>
        <ul>
          <li>Pré-condição: Alterar Senha.</li>
          <li>A nova senha deve conter pelo menos 8 caracteres.</li>
        </ul>
      </td>
    </tr><tr>
      <td>Atores</td>
      <td>Sistema e Base de Dados.</td>
    </tr><tr>
      <td>Recursos</td>
      <td>
        <ul>
          <li>Parâmetros: nova senha (string).</li>
          <li>Cachê: identificador do usuário logado (string).</li>
          <li>Tabela de usuários.</li>
        </ul>
      </td>
    </tr><tr>
      <td>Exceções</td>
      <td>
        <ul>
          <li>Nova senha com menos de 8 caracteres. [Retorna erro de nova senha inválida]</li>
        </ul>
      </td>
    </tr><tr>
      <td>Episódios</td>
      <td>
        <ul>
          <li>Faz busca na tabela de usuários restringindo com base no identificador de usuário logado.</li>
          <li>Altera o campo senha do registro com base na nova senha.</li>
        </ul>
      </td>
    </tr><tr>
      <td>Restrição</td>
      <td>O sistema deve ser robusto.</td>
    </tr>
</table>

<table> <tr> <th>Título</th> <th align="left">Inserir Registro de Editor</th>
    </tr><tr>
      <td>Objetivo</td>
      <td>Inserir um novo usuário com permições de editor na tabela de usuário.</td>
    </tr><tr>
      <td>Contexto</td>
      <td>
        <ul>
          <li>Pré-condição: Cadastrar Editor.</li>
          <li>O usuário logado deve ser o Administrador.</li>
        </ul>
      </td>
    </tr><tr>
      <td>Atores</td>
      <td>Sistema, Base de Dados e Servidor de Email.</td>
    </tr><tr>
      <td>Recursos</td>
      <td>
        <ul>
          <li>Parâmetros: identificador do editor(string) e e-mail do editor (string).</li>
          <li>Cachê: identificador do usuário logado (string).</li>
          <li>Senha gerada (string).</li>
          <li>Tabela de usuários.</li>
        </ul>
      </td>
    </tr><tr>
      <td>Exceções</td>
      <td>
        <ul>
          <li>Identificador ou e-mail do editor já cadastrado. [Retorna erro de identificador ou e-mail já cadastrado]</li>
          <li>Usuário logado não é o administrador. [Retorna erro de permissão inválida]</li>
        </ul>
      </td>
    </tr><tr>
      <td>Episódios</td>
      <td>
        <ul>
          <li>Gera uma senha aleatória para o editor.</li>
          <li>Insere um novo registro na tabela de usuário com identificador do editor, e-mail do editor, senha gerada e permissão de editor.</li>
          <li>Servidor de e-mail envia um e-mail para o editor com o identificado e a senha.</li>
        </ul>
      </td>
    </tr><tr>
      <td>Restrição</td>
      <td>O sistema deve ser robusto.</td>
    </tr>
</table>

<table> <tr> <th>Título</th> <th align="left">Inserir Registro de Evento</th>
    </tr><tr>
      <td>Objetivo</td>
      <td>Inserir um novo evento na tabela de eventos.</td>
    </tr><tr>
      <td>Contexto</td>
      <td>
        <ul>
          <li>Pré-condição: Cadastrar Evento.</li>
          <li>O usuário logado deve ser o Administrador.</li>
        </ul>
      </td>
    </tr><tr>
      <td>Atores</td>
      <td>Sistema e Base de Dados.</td>
    </tr><tr>
      <td>Recursos</td>
      <td>
        <ul>
          <li>Parâmetros: nome (string), sigla (string), logotipo (string com caminho para imagem) e resumo (string).</li>
          <li>Cachê: identificador do usuário logado (string).</li>
          <li>Tabela de eventos.</li>
        </ul>
      </td>
    </tr><tr>
      <td>Exceções</td>
      <td>
        <ul>
          <li>Sigla ou nome do evento já cadastrado. [Retorna erro de evento já cadastrado]</li>
          <li>Usuário logado não é o administrador. [Retorna erro de permissão inválida]</li>
        </ul>
      </td>
    </tr><tr>
      <td>Episódios</td>
      <td>
        <ul>
          <li>Insere um novo registro na tabela de usuário com nome, sigla, logotipo e resumo.</li>
        </ul>
      </td>
    </tr><tr>
      <td>Restrição</td>
      <td>O sistema deve ser robusto.</td>
    </tr>
</table>

<table> <tr> <th>Título</th> <th align="left">Inserir Registro de Edição</th>
    </tr><tr>
      <td>Objetivo</td>
      <td>Inserir uma nova edição na tabela de edições.</td>
    </tr><tr>
      <td>Contexto</td>
      <td>
        <ul>
          <li>Pré-condição: Cadastrar Edição.</li>
          <li>O usuário logado deve ser o Administrador.</li>
        </ul>
      </td>
    </tr><tr>
      <td>Atores</td>
      <td>Sistema e Base de Dados.</td>
    </tr><tr>
      <td>Recursos</td>
      <td>
        <ul>
          <li>Parâmetros: sigla do evento(string) e ano da edição (inteiro).</li>
          <li>Cachê: identificador do usuário logado (string).</li>
          <li>Chave única do evento (string).</li>
          <li>Tabela de eventos e tabela de edições.</li>
        </ul>
      </td>
    </tr><tr>
      <td>Exceções</td>
      <td>
        <ul>
          <li>Evento não encontrado. [Retorna erro de evento não encontrado]</li>
          <li>Edição já cadastrada. [Retorna erro de edição já cadastrada]</li>
          <li>Usuário logado não é o administrador. [Retorna erro de permissão inválida]</li>
        </ul>
      </td>
    </tr><tr>
      <td>Episódios</td>
      <td>
        <ul>
          <li>Faz busca na tabela de eventos restringindo com base na sigla.</li>
          <li>Obtém chave única do registro do evento encontrado.</li>
          <li>Insere um novo registro na tabela de edições com chave única do evento, e ano da edição.</li>
        </ul>
      </td>
    </tr><tr>
      <td>Restrição</td>
      <td>O sistema deve ser robusto.</td>
    </tr>
</table>

<table> <tr> <th>Título</th> <th align="left">Inserir Permissão para Editor</th>
    </tr><tr>
      <td>Objetivo</td>
      <td>Inserir uma nova permissão na tabela de permissões.</td>
    </tr><tr>
      <td>Contexto</td>
      <td>
        <ul>
          <li>Pré-condição: Associar Editor.</li>
          <li>O usuário logado deve ser o Administrador.</li>
        </ul>
      </td>
    </tr><tr>
      <td>Atores</td>
      <td>Sistema e Base de Dados.</td>
    </tr><tr>
      <td>Recursos</td>
      <td>
        <ul>
          <li>Parâmetros: sigla do evento (string), ano da edição (inteiro) e identificador do editor (string).</li>
          <li>Cachê: identificador do usuário logado (string).</li>
          <li>Chave única da edição (string) e chave única do editor (string).</li>
          <li>Tabela de usuários, tabela de eventos, tabela de edições e tabela de permissões.</li>
        </ul>
      </td>
    </tr><tr>
      <td>Exceções</td>
      <td>
        <ul>
          <li>Par <evento, edição> não encontrado. [Retorna erro de evento ou edição não encontrado]</li>
          <li>Editor não encontrado. [Retorna erro de editor não encontrado]</li>
          <li>Associação já cadastrada. [Retorna erro de edição já cadastrada]</li>
          <li>Usuário logado não é o administrador. [Retorna erro de permissão inválida]</li>
        </ul>
      </td>
    </tr><tr>
      <td>Episódios</td>
      <td>
        <ul>
          <li>Faz busca nas tabelas de eventos e edições restringindo com base na sigla do evento e no ano da edição.</li>
          <li>Obtém chave única do registro da edição encontrada.</li>
          <li>Faz busca na tabela de usuários restringindo com base no identificador do editor.</li>
          <li>Obtém chave única do registro do usuário encontrado.</li>
          <li>Insere um novo registro na tabela de permissões com chave única da edição, e chave única do editor.</li>
        </ul>
      </td>
    </tr><tr>
      <td>Restrição</td>
      <td>O sistema deve ser robusto.</td>
    </tr>
</table>

<table> <tr> <th>Título</th> <th align="left">Inserir Registro de Artigo</th>
    </tr><tr>
      <td>Objetivo</td>
      <td>Inserir um novo artigo na tabela de artigos.</td>
    </tr><tr>
      <td>Contexto</td>
      <td>
        <ul>
          <li>Pré-condição: Incluir Artigo.</li>
          <li>O usuário logado deve ter permissão para inserir artigos na edição.</li>
        </ul>
      </td>
    </tr><tr>
      <td>Atores</td>
      <td>Sistema e Base de Dados.</td>
    </tr><tr>
      <td>Recursos</td>
      <td>
        <ul>
          <li>Parâmetros: sigla do evento (string), ano da edição (inteiro) identificador do editor (string), link para pdf (string), título (string), autores (lista de strings), resumo (string), palavras chaves (lista de strings).</li>
          <li>Cachê: identificador do usuário logado (string).</li>
          <li>Chave única da edição (string).</li>
          <li>Tabela de usuários, tabela de eventos, tabela de edições, tabela de permissões e tabela de artigos.</li>
        </ul>
      </td>
    </tr><tr>
      <td>Exceções</td>
      <td>
        <ul>
          <li>Par <evento, edição> não encontrado. [Retorna erro de evento ou edição não encontrado]</li>
          <li>Editor não possui permissão. [Retorna erro de permissão inválida]</li>
        </ul>
      </td>
    </tr><tr>
      <td>Episódios</td>
      <td>
        <ul>
          <li>Faz busca nas tabelas de eventos e edições restringindo com base na sigla do evento e no ano da edição.</li>
          <li>Obtém chave única do registro da edição encontrada.</li>
          <li>Faz busca nas tabelas de usuários e permissões restringindo com base na chave da edição e no identificador do editor.</li>
          <li>Verifica se o editor possui permissão.</li>
          <li>Insere um novo registro na tabela de artigos com chave única da edição, link para pdf, título, autores, resumo e palavras chaves.</li>
        </ul>
      </td>
    </tr><tr>
      <td>Restrição</td>
      <td>O sistema deve ser robusto.</td>
    </tr>
</table>

<table> <tr> <th>Título</th> <th align="left">Obter Eventos</th>
    </tr><tr>
      <td>Objetivo</td>
      <td>Retornar ao controle uma lista de eventos e seus dados.</td>
    </tr><tr>
      <td>Contexto</td>
      <td>
        <ul>
          <li>Pré-condição: Exibir Página.</li>
        </ul>
      </td>
    </tr><tr>
      <td>Atores</td>
      <td>Sistema e Base de Dados.</td>
    </tr><tr>
      <td>Recursos</td>
      <td>
        <ul>
          <li>Retorno: lista de tabelas Lua com logotipo, nome, sigla, resumo e edições do evento.</li>
          <li>Tabela de eventos e tabela de edições.</li>
        </ul>
      </td>
    </tr><tr>
      <td>Exceções</td>
      <td>N/A</td>
    </tr><tr>
      <td>Episódios</td>
      <td>
        <ul>
          <li>Para cada registro da tabela de eventos.
            <ul>
              <li>Busca na tabela de edições restringindo com base no identificador do evento.</li>
              <li>Insere os registros de edições encontrados numa lista de edições.</li>
              <li>Cria tabela Lua com nome, sigla, resumo e lista de edições.</li>
              <li>Insere tabela Lua na lista de tabelas Lua.</li>
            </ul>
          </li>
          <li>Retorna lista de tabelas Lua.</li>
        </ul>
      </td>
    </tr><tr>
      <td>Restrição</td>
      <td>O sistema deve ser robusto.</td>
    </tr>
</table>

<table> <tr> <th>Título</th> <th align="left">Obter Artigos por Edição</th>
    </tr><tr>
      <td>Objetivo</td>
      <td>Retornar ao controle uma lista artigos e seus dados, filtrados por edição.</td>
    </tr><tr>
      <td>Contexto</td>
      <td>
        <ul>
          <li>Pré-condição: Listar por Edição.</li>
        </ul>
      </td>
    </tr><tr>
      <td>Atores</td>
      <td>Sistema e Base de Dados.</td>
    </tr><tr>
      <td>Recursos</td>
      <td>
        <ul>
          <li>Parâmetros: sigla do evento (string) e ano do evento (inteiro).</li>
          <li>Retorno: lista de tabelas Lua com dados do artigo.</li>
          <li>Tabela de eventos, tabela de edições e tabela de artigos.</li>
        </ul>
      </td>
    </tr><tr>
      <td>Exceções</td>
      <td>N/A</td>
    </tr><tr>
      <td>Episódios</td>
      <td>
        <ul>
          <li>Busca na tabela de eventos, edições e artigos restringido com base na sigla do evento e no ano do evento.</li>
          <li>Para cada registro da tabela de artigos.
            <ul>
              <li>Cria tabela Lua com dados do artigo.</li>
              <li>Insere tabela Lua na lista de tabelas Lua.</li>
            </ul>
          </li>
          <li>Retorna lista de tabelas Lua.</li>
        </ul>
      </td>
    </tr><tr>
      <td>Restrição</td>
      <td>O sistema deve ser robusto.</td>
    </tr>
</table>

<table> <tr> <th>Título</th> <th align="left">Obter Artigos por Citações</th>
    </tr><tr>
      <td>Objetivo</td>
      <td>Retornar ao controle uma lista artigos e seus dados, ordenado por número de citações.</td>
    </tr><tr>
      <td>Contexto</td>
      <td>
        <ul>
          <li>Pré-condição: Listar Mais Citados.</li>
        </ul>
      </td>
    </tr><tr>
      <td>Atores</td>
      <td>Sistema e Base de Dados.</td>
    </tr><tr>
      <td>Recursos</td>
      <td>
        <ul>
          <li>Parâmetros: número desejado de artigos (inteiro). </li>
          <li>Retorno: lista de tabelas Lua com dados do artigo.</li>
          <li>Tabela de artigos.</li>
        </ul>
      </td>
    </tr><tr>
      <td>Exceções</td>
      <td>N/A</td>
    </tr><tr>
      <td>Episódios</td>
      <td>
        <ul>
          <li>Busca na tabela de artigos ordenando decrescentemente por número de citações.</li>
          <li>Para cada registro da tabela de artigos.
            <ul>
              <li>Cria tabela Lua com dados do artigo.</li>
              <li>Insere tabela Lua na lista de tabelas Lua.</li>
              <li>Se o tamanho da lista de citações for igual ao número desejado de artigos, para.</li>
            </ul>
          </li>
          <li>Retorna lista de tabelas Lua.</li>
        </ul>
      </td>
    </tr><tr>
      <td>Restrição</td>
      <td>O sistema deve ser robusto.</td>
    </tr>
</table>

<table> <tr> <th>Título</th> <th align="left">Atualizar Número de Downloads</th>
    </tr><tr>
      <td>Objetivo</td>
      <td>Incrementa o número de downloads de um artigo.</td>
    </tr><tr>
      <td>Contexto</td>
      <td>
        <ul>
          <li>Pré-condição: Obter Artigos por Edição e Obter Artigos por Citações.</li>
          <li>O cenário ocorre quando um download de um pdf é feito.</li>
        </ul>
      </td>
    </tr><tr>
      <td>Atores</td>
      <td>Sistema e Base de Dados.</td>
    </tr><tr>
      <td>Recursos</td>
      <td>
        <ul>
          <li>Parâmetros: path do artigo (string) e número de downloads do artigo (inteiro).</li>
          <li>Tabela de artigos.</li>
        </ul>
      </td>
    </tr><tr>
      <td>Exceções</td>
      <td>N/A</td>
    </tr><tr>
      <td>Episódios</td>
      <td>
        <ul>
          <li>Faz busca na tabela de artigos restringindo com base no path para pdf.</li>
          <li>Obtém o número de downloads do artigo do registro.</li>
          <li>Incremente o número de downloads do artigo.</li>
          <li>Altera o número de downloads do registro do artigo.</li>
        </ul>
      </td>
    </tr><tr>
      <td>Restrição</td>
      <td>O sistema deve ser robusto.</td>
    </tr>
</table>

<table> <tr> <th>Título</th> <th align="left">Atualizar Registro de Citações</th>
    </tr><tr>
      <td>Objetivo</td>
      <td>Obter no Google Scholar o número de citações dos artigos.</td>
    </tr><tr>
      <td>Contexto</td>
      <td>
        <ul>
          <li>Pré-condição: Atualizar Citações.</li>
        </ul>
      </td>
    </tr><tr>
      <td>Atores</td>
      <td>Sistema, Base de Dados e Google Scholar.</td>
    </tr><tr>
      <td>Recursos</td>
      <td>
        <ul>
          <li>Nome do artigo (string), autores do artigo (string) e número de citações (inteiro) </li>
          <li>Tabela de artigos.</li>
        </ul>
      </td>
    </tr><tr>
      <td>Exceções</td>
      <td>
        <ul>
          <li>Google Scholar fora do ar. [Mantém o número anterior de citações]</li>
          <li>Query bloqueada ou inválida. [Mantém o número anterior de citações]</li>
        </ul>
      </td>
    </tr><tr>
      <td>Episódios</td>
      <td>
        <ul>
          <li>Para cada registro da tabela de artigos.
            <ul>
              <li>Obtém do registro o nome do artigo e os nomes dos autores.</li>
              <li>Realiza query no Google Scholar passado os dados obtidos.</li>
              <li>Realiza parse do resultado da query e obtém o número de citações.</li>
              <li>Atualiza o campo com número de citações no registro do artigo.</li>
            </ul>
          </li>
        </ul>
      </td>
    </tr><tr>
      <td>Restrição</td>
      <td>O sistema deve ser robusto.</td>
    </tr>
</table>

## Cenários da Visão

<table> <tr> <th>Título</th> <th align="left">Exibe Página de Login no Sistema</th>
    </tr><tr>
      <td>Objetivo</td>
      <td>Usuário preenche campos de texto com login e senha. O sistema informa que o login foi realizado e exibe links para as funcionalidades.</td>
    </tr><tr>
      <td>Contexto</td>
      <td>
        <ul>
          <li>O usuário deve acessar a página host/login em um browser atual.</li>
          <li>Pré-requisito: Cenário Login no Sistema.</li>
        </ul>
      </td>
    </tr><tr>
      <td>Atores</td>
      <td>Sistema, Administrador e Editor.</td>
    </tr><tr>
      <td>Recursos</td>
      <td>Campo de texto para login, campo de texto para senha, botão para confirmação, botão para esquecimento de dados e links para funcionalidades.</td>
    </tr><tr>
      <td>Exceções</td>
      <td>
        <ul>
          <li>Par <identificar, senha> não está cadastrado.  [Exibe uma mensagem dizendo que o par não está cadastrado]</li>
          <li>Algum campo ficou em branco após clicar confirmação. [Exibe uma mensagem dizendo qual campo ficou em branco]</li>
          <li>O usuário clica no botão de esquecimento dos dados. [Cenário: Exibe Página de Esqueceu dos Dados]</li>
        </ul>
      </td>
    </tr><tr>
      <td>Episódios</td>
      <td>
        <ul>
          <li>Usuário preenche o campo de login.</li>
          <li>Usuário preenche o campo de senha.</li>
          <li>Usuário clica no botão de confirmação.</li>
          <li>Sistema faz requisição de Login no Sistemma.</li>
          <li>Sistema exibe página de acesso restrito.</li>
          <li>Se o Usuário for o Administrador, o Sistema exibe links para as funcionalidades de Alterar Senha, Incluir Artigo, Cadastrar Evento, Cadastrar Edição e Associar Editor.</li>
          <li>Se o Usuário for um Editor, o Sistema exibe links para as funcionalidades de Alterar Senha, Incluir Artigo e Editar Artigo.</li>
        </ul>
      </td>
    </tr><tr>
      <td>Restrição</td>
      <td>O sistema deve ter interface amigável.</td>
    </tr>
</table>

<table> <tr> <th>Título</th> <th align="left">Exibe Página de Esqueceu dos Dados</th>
    </tr><tr>
      <td>Objetivo</td>
      <td>Usuário preenche campo com seu email. Sistema informa que os dados foram enviados.</td>
    </tr><tr>
      <td>Contexto</td>
      <td>Pré requisito: Cenário Esqueceu dos dados.</td>
    </tr><tr>
      <td>Atores</td>
      <td>Sistema, Administrador e Leitor.</td>
    </tr><tr>
      <td>Recursos</td>
      <td>Campo de texto para o email do usuário, botão de confirmação e botão de voltar.</td>
    </tr><tr>
      <td>Exceções</td>
      <td>
        <ul>
          <li>Email não cadastrado no Sistema. [Exibe uma mensagem dizendo que o email não está cadastrado]</li>
          <li>Algum campo ficou em branco após clicar confirmação. [Avisa qual campo ficou em branco]</li>
          <li>Usuário clica no botão de voltar [Volta à página anterior]</li>
        </ul>
      </td>
    </tr><tr>
      <td>Episódios</td>
      <td>
        <ul>
          <li>Usuário preenche o campo de email.</li>
          <li>Usuário clica no botão de confirmação.</li>
          <li>Sistema faz requisição de esqueceu dos dados.</li>
          <li>Sistema exibe mensagem dizendo que enviou os dados para o email do usuário.</li>
        </ul>
      </td>
    </tr><tr>
      <td>Restrição</td>
      <td>O sistema deve ter interface amigável.</td>
    </tr>
</table>

<table> <tr> <th>Título</th> <th align="left">Exibe Página de Alterar Senha</th>
    </tr><tr>
      <td>Objetivo</td>
      <td>O usuário digita a nova senha. O sistema confirma a alteração.</td>
    </tr><tr>
      <td>Contexto</td>
      <td>
        <ul>
          <li>Pré requisito: Cenário Alterar Senha.</li>
          <li>Usuário está na página de alteração de senha.</li>
        </ul>
      </td>
    </tr><tr>
      <td>Atores</td>
      <td>Sistema e Usuário.</td>
    </tr><tr>
      <td>Recursos</td>
      <td>Dois campos de texto para a nova senha, botão de confirmação e botão de voltar.</td>
    </tr><tr>
      <td>Exceções</td>
      <td>
        <ul>
          <li>Os dois campos não possuem a mesma senha. [Exibe mensagem dizendo que os campos não são iguais]</li>
          <li>Algum campo ficou em branco após clicar confirmação. [Avisa qual campo ficou em branco]</li>
          <li>Usuário clica no botão de voltar [Volta à página anterior]</li>
        </ul>
      </td>
    </tr><tr>
      <td>Episódios</td>
      <td>
        <ul>
          <li>Usuário digita a nova senha nos dois campos de texto.</li>
          <li>Usuário clica no botão de confirmação.</li>
          <li>Sistema faz requisição de alterar senha.</li>
          <li>Sistema exibe mensagem dizendo que a senha foi alterada.</li>
        </ul>
      </td>
    </tr><tr>
      <td>Restrição</td>
      <td>O sistema deve ter interface amigável.</td>
    </tr>
</table>

<table> <tr> <th>Título</th> <th align="left">Exibe Página de Cadatrar Editor</th>
    </tr><tr>
      <td>Objetivo</td>
      <td>Administrador preenche os dados do novo editor. Sistema confirma cadastro.</td>
    </tr><tr>
      <td>Contexto</td>
      <td>
        <ul>
          <li>Pré requisito: Cenário Cadastrar Editor.</li>
          <li>Administrador está na página de cadastro de editor.</li>
        </ul>
      </td>
    </tr><tr>
      <td>Atores</td>
      <td>Sistema e Administrador.</td>
    </tr><tr>
      <td>Recursos</td>
      <td>Campo de texto para o identificador, campo de texto para o email, botão de confirmação e botão de voltar.</td>
    </tr><tr>
      <td>Exceções</td>
      <td>
        <ul>
          <li>Identificador ou email de usuário já cadastrado [Avisa qual dado já está em uso]</li>
          <li>Algum campo ficou em branco após clicar confirmação. [Avisa qual campo ficou em branco]</li>
          <li>Usuário clica no botão de voltar [Volta à página anterior]</li>
        </ul>
      </td>
    </tr><tr>
      <td>Episódios</td>
      <td>
        <ul>
          <li>Administrador digita o login do novo usuário.</li>
          <li>Administrador digita o email do novo usuário.</li>
          <li>Administrador clica no botão de confirmação.</li>
          <li>Sistema faz requisição de Cadastrar Editor.</li>
          <li>Sistema informa que o usuário foi cadastrado.</li>
        </ul>
      </td>
    </tr><tr>
      <td>Restrição</td>
      <td>O sistema deve ter interface amigável.</td>
    </tr>
</table>

<table> <tr> <th>Título</th> <th align="left">Exibe Página de Cadastrar Evento</th>
    </tr><tr>
      <td>Objetivo</td>
      <td>Administrador preenche os dados de um novo evento. Sistema confirma cadastro de novo evento.</td>
    </tr><tr>
      <td>Contexto</td>
      <td>
        <ul>
          <li>Pré requisito: Cenário Cadastar Evento.</li>
          <li>Administrador está na página de cadastro de evento.</li>
        </ul>
      </td>
    </tr><tr>
      <td>Atores</td>
      <td>Sistema e Adminstrador.</td>
    </tr><tr>
      <td>Recursos</td>
      <td>Campo de texto para o nome, campo de texto para a sigla, popup para buscar o arquivo de logotipo, caixa de texto para resumo do evento, botão de confirmar e botão de voltar.</td>
    </tr><tr>
      <td>Exceções</td>
      <td>
        <ul>
          <li>Já existe um evento com mesmo nome ou sigla [que já existe um evento com mesmo nome ou sigla]</li>
          <li>Algum campo ficou em branco após clicar confirmação. [Avisa qual campo ficou em branco]</li>
          <li>Usuário clica no botão de voltar [Volta à página anterior]</li>
        </ul>
      </td>
    </tr><tr>
      <td>Episódios</td>
      <td>
        <ul>
          <li>Administrador digita o nome.</li>
          <li>Administrador digita a sigla.</li>
          <li>Administrador abre o popup para o buscar o logotipo.</li>
          <li>Administrador digita o resumo.</li>
          <li>Administrador clica em confirmar.</li>
          <li>Sistema faz requisição de cadastrar evento.</li>
          <li>Sistema exibe mensagem dizendo que o novo evento foi cadastrado com sucesso.</li>
        </ul>
      </td>
    </tr><tr>
      <td>Restrição</td>
      <td>O sistema deve ter interface amigável.</td>
    </tr>
</table>

<table> <tr> <th>Título</th> <th align="left">Exibe Página de Cadastrar Edição</th>
    </tr><tr>
      <td>Objetivo</td>
      <td>Administrador seleciona evento e preenche ano da edição. Sistema confirma cadastro de nova edição.</td>
    </tr><tr>
      <td>Contexto</td>
      <td>
        <ul>
          <li>Pré requisito: Cenário Cadastar Edição.</li>
          <li>Administrador está na página de cadastro de edição.</li>
        </ul>
      </td>
    </tr><tr>
      <td>Atores</td>
      <td>Sistema e Adminstrador.</td>
    </tr><tr>
      <td>Recursos</td>
      <td>Lista selecionável com os eventos, campo de texto para ano, botão de confirmação e botão de voltar.</td>
    </tr><tr>
      <td>Exceções</td>
      <td>
        <ul>
          <li>Já existe uma edição no ano escolhido. [Avisa que já existe uma edição neste ano]</li>
          <li>Algum campo ficou em branco após clicar confirmação. [Avisa qual campo ficou em branco]</li>
          <li>Usuário clica no botão de voltar [Volta à página anterior]</li>
        </ul>
      </td>
    </tr><tr>
      <td>Episódios</td>
      <td>
        <ul>
          <li>Administrador seleciona o evento.</li>
          <li>Administrador preenche campo de ano da edição.</li>
          <li>Administrador clica em confirmar.</li>
          <li>Sistema faz requisição de cadastrar edição.</li>
          <li>Sistema exibe mensagem dizendo que a nova edição foi cadastrada com sucesso.</li>
        </ul>
      </td>
    </tr><tr>
      <td>Restrição</td>
      <td>O sistema deve ter interface amigável.</td>
    </tr>
</table>

<table> <tr> <th>Título</th> <th align="left">Exibe Página de Associar Editor</th>
    </tr><tr>
      <td>Objetivo</td>
      <td>Administrador seleciona evento, edição e editor e confirma. Sistema confirma associação de editor com edição.</td>
    </tr><tr>
      <td>Contexto</td>
      <td>
        <ul>
          <li>Pré requisito: Cenário Associar Editor.</li>
          <li>Administrador está na página de associar editor.</li>
        </ul>
      </td>
    </tr><tr>
      <td>Atores</td>
      <td>Sistema e Adminstrador.</td>
    </tr><tr>
      <td>Recursos</td>
      <td>Lista selecionável com os eventos, campo de texto para ano, lista selcionável com os editores, botão de confirmação e botão de voltar.</td>
    </tr><tr>
      <td>Exceções</td>
      <td>
        <ul>
          <li>Não existe edição com o ano escolhido. [Avisa que não existe a edição selecionada para tal evento]</li>
          <li>O editor já está associada a edição escolhida. [Avisa que o editor já está associado]</li>
          <li>Algum campo ficou em branco após clicar confirmação. [Avisa qual campo ficou em branco]</li>
          <li>Usuário clica no botão de voltar [Volta à página anterior]</li>
        </ul>
      </td>
    </tr><tr>
      <td>Episódios</td>
      <td>
        <ul>
          <li>Administrador seleciona o evento.</li>
          <li>Administrador preenche campo de ano da edição.</li>
          <li>Administrador seleciona o editor.</li>
          <li>Administrador clica em confirmar.</li>
          <li>Sistema faz requisição de associar editor.</li>
          <li>Sistema exibe mensagem dizendo que o editor foi associado com sucesso.</li>
        </ul>
      </td>
    </tr><tr>
      <td>Restrição</td>
      <td>O sistema deve ter interface amigável.</td>
    </tr>
</table>

<table> <tr> <th>Título</th> <th align="left">Exibe Página de Incluir Artigo</th>
    </tr><tr>
      <td>Objetivo</td>
      <td>Editor preenche as informações de um artigo. Sistema confirma a inserção de um novo artigo.</td>
    </tr><tr>
      <td>Contexto</td>
      <td>
        <ul>
          <li>Pré requisito: Cenário Incluir Artigo.</li>
          <li>Editor está na página de incluir artigo.</li>
        </ul>
      </td>
    </tr><tr>
      <td>Atores</td>
      <td>Sistema e Editor.</td>
    </tr><tr>
      <td>Recursos</td>
      <td>Campo de texto para título, campo de texto para autores, popup para buscar o arquivo pdf, campo de texto para o ano, campo de texto para o resumo, campo de texto para as palavras-chaves, botão de confimação e botão de voltar.</td>
    </tr><tr>
      <td>Exceções</td>
      <td>
        <ul>
          <li>Algum campo ficou em branco após clicar confirmação. [Avisa qual campo ficou em branco]</li>
          <li>Usuário clica no botão de voltar [Volta à página anterior]</li>
        </ul>
      </td>
    </tr><tr>
      <td>Episódios</td>
      <td>
        <ul>
          <li>Editor preenche o título, autores, ano, resumo e palavras chaves.</li>
          <li>Editor faz upload do arquivo pdf do artigo.</li>
          <li>Editor confirma a inserção do novo artigo.</li>
          <li>Sistema faz requisição de incluir artigo.</li>
          <li>Sistema exibe mensagem dizendo que o artigo foi inserido com sucesso.</li>
        </ul>
      </td>
    </tr><tr>
      <td>Restrição</td>
      <td>O sistema deve ter interface amigável.</td>
    </tr>
</table>

<table> <tr> <th>Título</th> <th align="left">Exibe Página Principal</th>
    </tr><tr>
      <td>Objetivo</td>
      <td>Sistema exibe eventos, Leitor escolhe um evento e Sistema exibe as informações do evento escolhido.</td>
    </tr><tr>
      <td>Contexto</td>
      <td>
        <ul>
          <li>Pré requisito: Cenário Exibir Página.</li>
          <li>Leitor está na página index do sistema.</li>
        </ul>
      </td>
    </tr><tr>
      <td>Atores</td>
      <td>Sistema, Leitor e Google Search.</td>
    </tr><tr>
      <td>Recursos</td>
      <td>Imagem com os logotipos, labels com os nomes, resumos e edições dos eventos, link para mais citados e caixa de busca.</td>
    </tr><tr>
      <td>Exceções</td>
      <td>N/A</td>
    </tr><tr>
      <td>Episódios</td>
      <td>
        <ul>
          <li>Sistema faz requisição de exibir evento.</li>
          <li>Sistema lista os logotipos e nomes dos eventos disponíveis no sistema.</li>
          <li>Leitor escolhe um dos eventos disponíveis.</li>
          <li>Sistema lista o nome, o resumo e as edições do evento.</li>
          <li>Se o Leitor escolher uma edição, acontece o cenário Exibir por Edição.</li>
          <li>Se o Leitor escolher listar mais citados, acontece o cenário Exibir mais Citados.</li>
          <li>Se o Leitor fazer uma busca, ele é redirecionado para o Google Search.</li>
        </ul>
      </td>
    </tr><tr>
      <td>Restrição</td>
      <td>
        <ul>
          <li>O sistema deve ter interface amigável.</li>
          <li>A busca deve ser feita pelo Google Search.</li>
        <ul>
      </td>
    </tr>
</table>

<table> <tr> <th>Título</th> <th align="left">Exibe por Edição</th>
    </tr><tr>
      <td>Objetivo</td>
      <td>Sistema exibe artigos de uma edição.</td>
    </tr><tr>
      <td>Contexto</td>
      <td>
        <ul>
          <li>Pré requisito: Cenário Listar Por Edição.</li>
          <li>Leitor está na página da edição desejada.</li>
        </ul>
      </td>
    </tr><tr>
      <td>Atores</td>
      <td>Sistema e Leitor.</td>
    </tr><tr>
      <td>Recursos</td>
      <td>Links para os pdfs e labels com o nome, autores, resumo, palavras chaves, número de citações e número de downloads dos artigos.</td>
    </tr><tr>
      <td>Exceções</td>
      <td>N/A</td>
    </tr><tr>
      <td>Episódios</td>
      <td>
        <ul>
          <li>Sistema faz requisição de exibir por evento.</li>
          <li>Sistema lista os dados dos artigos da edição.</li>
          <li>Se o leitor acessar o link do artigo, o download é realizado.</li>
        </ul>
      </td>
    </tr><tr>
      <td>Restrição</td>
      <td>O sistema deve ter interface amigável.</td>
    </tr>
</table>

<table> <tr> <th>Título</th> <th align="left">Exibe mais Citados</th>
    </tr><tr>
      <td>Objetivo</td>
      <td>Sistema exibe artigos mais citados.</td>
    </tr><tr>
      <td>Contexto</td>
      <td>
        <ul>
          <li>Pré requisito: Cenário Listar mais Citados.</li>
          <li>Leitor está na página de artigos mais citados.</li>
        </ul>
      </td>
    </tr><tr>
      <td>Atores</td>
      <td>Sistema e Leitor.</td>
    </tr><tr>
      <td>Recursos</td>
      <td>Links para os pdfs e labels com o nome, autores, resumo, palavras chaves, número de citações e número de downloads dos artigos.</td>
    </tr><tr>
      <td>Exceções</td>
      <td>N/A</td>
    </tr><tr>
      <td>Episódios</td>
      <td>
        <ul>
          <li>Sistema faz requisição de exibir mais citados.</li>
          <li>Sistema lista os dados dos artigos por ordem decrescente de número de citações.</li>
          <li>Se o leitor acessar o link do artigo, o download é realizado.</li>
        </ul>
      </td>
    </tr><tr>
      <td>Restrição</td>
      <td>O sistema deve ter interface amigável.</td>
    </tr>
</table>

## Cenários do Controle

<table> <tr> <th>Título</th> <th align="left">Controle do Grupo Logar</th>
    </tr><tr>
      <td>Objetivo</td>
      <td>Recebe requisições relacionadas a login, esquecimento dos dados e alteração de senha.</td>
    </tr><tr>
      <td>Contexto</td>
      <td>Grupo relacionado: Logar.</td>
    </tr><tr>
      <td>Atores</td>
      <td>Sistema Biblioteca Digital.</td>
    </tr><tr>
      <td>Recursos</td>
      <td>
        <ul>
          <li>Dados necessários: Identificador, email e senha do usuário.</li>
        </ul>
      </td>
    </tr><tr>
      <td>Exceções</td>
      <td>As exceções serão repassadas à visão em forma de mensagens de texto.</td>
    </tr><tr>
      <td>Episódios</td>
      <td>
        <ul>
          <li>Se a requisição for de login, realiza cenário Efetuar Login.</li>
          <li>Se a requisição for de esquecimento de dados, realiza cenário Enviar Dados.</li>
          <li>Se a requisição for de alteração de senha, realiza cenário Modificar Registro de Senha.</li>
        </ul>
      </td>
    </tr><tr>
      <td>Restrição</td>
      <td>O sistema deve ser robusto.</td>
    </tr>
</table>

<table> <tr> <th>Título</th> <th align="left">Controle do Grupo Administrador</th>
    </tr><tr>
      <td>Objetivo</td>
      <td>Recebe requisições relacionadas a cadastrar editor, cadastrar evento, cadastrar edição e associar editor.</td>
    </tr><tr>
      <td>Contexto</td>
      <td>Grupo relacionado: Adminstrador.</td>
    </tr><tr>
      <td>Atores</td>
      <td>Sistema Biblioteca Digital.</td>
    </tr><tr>
      <td>Recursos</td>
      <td>
        <ul>
          <li>Dados necessários: Identificador do administrador, dados do editor, dados do evento e dados da edição.</li>
        </ul>
      </td>
    </tr><tr>
      <td>Exceções</td>
      <td>As exceções serão repassadas à visão em forma de mensagens de texto.</td>
    </tr><tr>
      <td>Episódios</td>
      <td>
        <ul>
          <li>Se a requisição for de cadastrar editor, realiza cenário Inserir Registro de Editor.</li>
          <li>Se a requisição for de cadastrar evento, realiza cenário Inserir Registro de Evento.</li>
          <li>Se a requisição for de cadastrar edição, realiza cenário Inserir Registro de Edição.</li>
          <li>Se a requisição for de associar editor, realiza cenário Inserir Permissão para Editor.</li>
        </ul>
      </td>
    </tr><tr>
      <td>Restrição</td>
      <td>O sistema deve ser robusto.</td>
    </tr>
</table>

<table> <tr> <th>Título</th> <th align="left">Controle do Grupo Artigo</th>
    </tr><tr>
      <td>Objetivo</td>
      <td>Recebe requisições relacionadas a incluir artigo, exibir página, listar por edição, listar mais citados e atualizar citações.</td>
    </tr><tr>
      <td>Contexto</td>
      <td>Grupo relacionado: Artigo.</td>
    </tr><tr>
      <td>Atores</td>
      <td>Sistema Biblioteca Digital.</td>
    </tr><tr>
      <td>Recursos</td>
      <td>
        <ul>
          <li>Dados necessários: Dados do artigo.</li>
        </ul>
      </td>
    </tr><tr>
      <td>Exceções</td>
      <td>As exceções serão repassadas à visão em forma mensagens de texto.</td>
    </tr><tr>
      <td>Episódios</td>
      <td>
        <ul>
          <li>Se a requisição for de Incluir Artigo, realiza cenário Inserir Registro de Artigo.</li>
          <li>Se a requisição for de Exibir Página, realiza cenário Obter Eventos.</li>
          <li>Se a requisição for de Listar por Edição, realiza cenário Obter Artigos por Edição.</li>
          <li>Se a requisição for de Listar Mais Citados, realiza cenário Obter Artigos por Citações.</li>
          <li>Se a requisição for de Atualizar Citações, realiza cenário Atualizar Registro de Citações.</li>
          <li>Se a houver um download de um pdf, realiza cenário Atualizar Número de Downloads.</li>
        </ul>
      </td>
    </tr><tr>
      <td>Restrição</td>
      <td>O sistema deve ser robusto.</td>
    </tr>
</table>

## Referências  
http://www-di.inf.puc-rio.br/~karin/pos/cenario.pdf  
http://www-di.inf.puc-rio.br/~julio/Slct-pub/rej2000.pdf  
