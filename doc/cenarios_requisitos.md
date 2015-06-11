# Cenários no Momento dos Requisitos

<table> <tr> <th>Título</th> <th align="left">Login no Sistema</th>
    </tr><tr>
      <td>Objetivo</td>
      <td>Usuário (Editor ou Administrador) obtém acesso à área restrita.</td>
    </tr><tr>
      <td>Contexto</td>
      <td>Usuário está na página de login.</td>
    </tr><tr>
      <td>Atores</td>
      <td>Sistema, Base de Dados e Usuário.</td>
    </tr><tr>
      <td>Recursos</td>
      <td>Identificador e senha do usuário.</td>
    </tr><tr>
      <td>Exceções</td>
      <td>
        <ul>
          <li>Par <identificar, senha> não está cadastrado no Banco de Dados. [Avisa que o par não está cadastrado]</li>
          <li>Algum campo ficou em branco. [Avisa quais campos não foram preenchidos]</li>
          <li>O usuário não lembra de seus dados de login. [Cenário: Esqueceu dos Dados]</li>
        </ul>
      </td>
    </tr><tr>
      <td>Episódios</td>
      <td>
        <ul>
          <li>Usuário preenche os campos de login e senha.</li>
          <li>Usuário confirma login.</li>
          <li>Sistema busca par <identificador, senha> na Base de Dados.</li>
          <li>Sistema abre página de acesso restrito.</li>
        </ul>
      </td>
    </tr><tr>
      <td>Restrição</td>
      <td>O sistema deve ter interface amigável.</td>
    </tr>
</table>

<table> <tr> <th>Título</th> <th align="left">Esqueceu dos Dados</th>
    </tr><tr>
      <td>Objetivo</td>
      <td>Enviar os dados de login para o e-mail do usuário.</td>
    </tr><tr>
      <td>Contexto</td>
      <td>Usuário está na página de login.</td>
    </tr><tr>
      <td>Atores</td>
      <td>Sistema, Base de Dados e Usuário.</td>
    </tr><tr>
      <td>Recursos</td>
      <td>Email do usuário e dados de login.</td>
    </tr><tr>
      <td>Exceções</td>
      <td>
        <ul>
          <li>Email não cadastrado no Banco de Dados. [Avisa que o e-mail não está cadastrado]</li>
          <li>Algum campo ficou em branco. [Avisa quais campos não foram preenchidos]</li>
        </ul>
      </td>
    </tr><tr>
      <td>Episódios</td>
      <td>
        <ul>
          <li>Usuário informa ao Sistema que esqueceu seus dados.</li>
          <li>Usuário preenche seu email.</li>
          <li>Sistema busca na Base da Dados o email do usuário e seus dados.</li>
          <li>Sistema envia um email ao usuário com os dados de login.</li>
          <li>Sistema avisa que enviou os dados.</li>
        </ul>
      </td>
    </tr><tr>
      <td>Restrição</td>
      <td>O sistema deve ter interface amigável.</td>
    </tr>
</table>

<table> <tr> <th>Título</th> <th align="left">Alterar Senha</th>
    </tr><tr>
      <td>Objetivo</td>
      <td>Alterar a senha de um usuário.</td>
    </tr><tr>
      <td>Contexto</td>
      <td>
        <ul>
          <li>O cenário Login no Sistema é pré-requisito.</li>
          <li>Usuário está na página de alteração de senha.</li>
        </ul>
      </td>
    </tr><tr>
      <td>Atores</td>
      <td>Sistema, Banco de Dados e Usuário.</td>
    </tr><tr>
      <td>Recursos</td>
      <td>Nova senha.</td>
    </tr><tr>
      <td>Exceções</td>
      <td>
        <ul>
          <li>Os dois campos de nova senha não são iguais. [Avisa que os campos não são iguais]</li>
          <li>Algum campo ficou em branco. [Avisa quais campos não foram preenchidos]</li>
        </ul>
      </td>
    </tr><tr>
      <td>Episódios</td>
      <td>
        <ul>
          <li>Usuário digita a nova senha em dois campos de texto.</li>
          <li>Usuário confirma alteração de senha.</li>
          <li>Sistema salva a nova senha no Banco de Dados.</li>
          <li>Sistema informa que a senha foi alterada.</li>
        </ul>
      </td>
    </tr><tr>
      <td>Restrição</td>
      <td>O sistema deve ter interface amigável.</td>
    </tr>
</table>

<table> <tr> <th>Título</th> <th align="left">Cadastrar Editor</th>
    </tr><tr>
      <td>Objetivo</td>
      <td>Cadastrar um novo usuário no Sistema.</td>
    </tr><tr>
      <td>Contexto</td>
      <td>
        <ul>
          <li>O cenário Login no Sistema é pré-requisito.</li>
          <li>Administrador está na página de cadastro de novo usuário.</li>
        </ul>
      </td>
    </tr><tr>
      <td>Atores</td>
      <td>Sistema, Base de Dados e Administrador.</td>
    </tr><tr>
      <td>Recursos</td>
      <td>Identificador, senha e e-mail do novo usuário.</td>
    </tr><tr>
      <td>Exceções</td>
      <td>
        <ul>
          <li>Identificador ou e-mail de usuário já cadastrado [Avisa qual dado já está em uso]</li>
          <li>Algum campo ficou em branco. [Avisa quais campos não foram preenchidos]</li>
        </ul>
      </td>
    </tr><tr>
      <td>Episódios</td>
      <td>
        <ul>
          <li>Administrador informa o identificar e o email do novo usuário.</li>
          <li>Administrador confirma o cadastro.</li>
          <li>Sistema gera uma senha para o novo usuário.</li>
          <li>Sistema cadastra os dados do usuário na Base de Dados.</li>
          <li>Sistema informa que o novo usuário foi cadastrado com sucesso.</li>
          <li>Sistema envia para o e-mail do novo usuário seu login e sua senha.</li>
        </ul>
    </tr><tr>
      <td>Restrição</td>
      <td>
        <ul>
          <li>O sistema deve ter interface amigável.</li>
          <li>A senha gerada deve ter 8 caracteres e deve possuir letras e números aleatórios.</li>
        </ul>
      </td>
    </tr>
</table>

<table> <tr> <th>Título</th> <th align="left">Cadastrar Evento</th>
    </tr><tr>
      <td>Objetivo</td>
      <td>Disponibilizar no Sistema um novo evento cientifico.</td>
    </tr><tr>
      <td>Contexto</td>
      <td>
        <ul>
          <li>O cenário Login no Sistema é pré-requisito.</li>
          <li>Administrador está na página de cadastro de novo evento.</li>
        </ul>
      </td>
    </tr><tr>
      <td>Atores</td>
      <td>Sistema, Base de Dados e Administrador.</td>
    </tr><tr>
      <td>Recursos</td>
      <td>Nome, sigla, logotipo e resumo do evento.</td>
    </tr><tr>
      <td>Exceções</td>
      <td>
        <ul>
          <li>Já existe um evento com mesmo nome ou sigla [Avisa que já existe um evento com mesmo nome ou sigla]</li>
          <li>Algum campo ficou em branco. [Avisa quais campos não foram preenchidos]</li>
        </ul>
      </td>
    </tr><tr>
      <td>Episódios</td>
      <td>
        <ul>
          <li>Administrador preenche o nome, a sigla e o resumo do Sistema.</li>
          <li>Administrador faz upload do logotipo do evento.</li>
          <li>Administrador confirma cadastro.</li>
          <li>Sistema insere no banco de dados o novo evento.</li>
          <li>Sistema informa que o novo evento foi cadastrado com sucesso.</li>
        </ul>
      </td>
    </tr><tr>
      <td>Restrição</td>
      <td>O sistema deve ter interface amigável.</td>
    </tr>
</table>

<table> <tr> <th>Título</th> <th align="left">Cadastrar Edição</th>
    </tr><tr>
      <td>Objetivo</td>
      <td>Cadastrar uma nova edição de um evento.</td>
    </tr><tr>
      <td>Contexto</td>
      <td>
        <ul>
          <li>O cenário Login no Sistema é pré-requisito.</li>
          <li>Administrador está na página de cadastro de nova edição.</li>
        </ul>
      </td>
    </tr><tr>
      <td>Atores</td>
      <td>Sistema, Base de Dados e Administrador.</td>
    </tr><tr>
      <td>Recursos</td>
      <td>Evento e ano da edição.</td>
    </tr><tr>
      <td>Exceções</td>
      <td>
        <ul>
          <li>Ano digitado é inválido. [Avisa que o ano é inválido]</li>
          <li>Já existe uma edição naquele ano. [Avisa que a edição já existe]</li>
          <li>Algum campo ficou em branco. [Avisa quais campos não foram preenchidos]</li>
        </ul>
      </td>
    </tr><tr>
      <td>Episódios</td>
      <td>
        <ul>
          <li>Sistema mostra os eventos cadastrados.</li>
          <li>Administrador seleciona o evento que terá uma nova edição.</li>
          <li>Administrador insere o ano do evento.</li>
          <li>Administrador confirma cadastro de edição.</li>
          <li>Sistema insere no banco de dados nova edição.<li>
          <li>Sistema informa que o evento foi cadastrado com sucesso.</li>
        </ul>
      </td>
    </tr><tr>
      <td>Restrição</td>
      <td>O sistema deve ter interface amigável.</td>
    </tr>
</table>

<table> <tr> <th>Título</th> <th align="left">Associar Editor</th>
    </tr><tr>
      <td>Objetivo</td>
      <td>Permitir que um Editor possa inserir e alterar artigos de uma edição de um evento.</td>
    </tr><tr>
      <td>Contexto</td>
      <td>
        <ul>
          <li>O cenário Login no Sistema é pré-requisito.</li>
          <li>Administrador está na página de associar Editor.</li>
        </ul>
      </td>
    </tr><tr>
      <td>Atores</td>
      <td>Sistema, Base de Dados e Administrador.</td>
    </tr><tr>
      <td>Recursos</td>
      <td>Login do Editor, evento e edição.</td>
    </tr><tr>
      <td>Exceções</td>
      <td>
        <ul>
          <li>Editor não cadastrado. [Avisa que não encontrou o Editor]</li>
          <li>Algum campo ficou em branco. [Avisa quais campos não foram preenchidos]</li>
        </ul>
      </td>
    </tr><tr>
      <td>Episódios</td>
      <td>
        <ul>
          <li>Sistema lista os eventos disponíveis.</li>
          <li>Administrador seleciona evento desejado.</li>
          <li>Sistema lista as edições do evento selecionado.</li>
          <li>Administrador seleciona as edições desejadas.</li>
          <li>Administrador insere o identificador do Editor.</li>
          <li>Administrador confirma associação</li>
          <li>Sistema insere na Base de Dados a associação do editor à edição.</li>
          <li>Sistema informa que o Editor foi associado.</li>
        </ul>
      </td>
    </tr><tr>
      <td>Restrição</td>
      <td>O sistema deve ter interface amigável.</td>
    </tr>
</table>

<table> <tr> <th>Título</th> <th align="left">Incluir Artigo</th>
    </tr><tr>
      <td>Objetivo</td>
      <td>Disponibilizar os dados do artigo para Leitores.</td>
    </tr><tr>
      <td>Contexto</td>
      <td>
        <ul>
          <li>O cenário Login no Sistema é pré-requisito.</li>
          <li>Editor logado na página de cadastro de novo artigo.</li>
        </ul>
      </td>
    </tr><tr>
      <td>Atores</td>
      <td>Sistema, Base de Dados e Editor.</td>
    </tr><tr>
      <td>Recursos</td>
      <td>
        <ul>
          <li>Artigo cientifico em arquivo ".pdf", título, ano, autores, resumo e palavras-chaves.</li>
          <li>Edição e evento relacionado ao artigo.</li>
        </ul>
      </td>
    </tr><tr>
      <td>Exceção</td>
      <td>
        <ul>
          <li>Algum campo ficou em branco. [Avisa quais campos não foram preenchidos]</li>
        </ul>
      </td>
    </tr><tr>
      <td>Episódio</td>
      <td>
        <ul>
          <li>Sistema mostra ao Editor quais eventos e edições ele pode inserir artigos.</li>
          <li>Editor seleciona o evento que o artigo pertence.</li>
          <li>Editor digita o título, ano, autores, resumo e palavras-chaves do artigo.</li>
          <li>Editor faz upload do PDF do artigo.</li>
          <li>Editor confirma cadastro de artigo.</li>
          <li>Sistema cadastra na Base de Dados o novo artigo.</li>
          <li>Sistema informa que o cadastro foi feito com sucesso.</li>
        </ul>
      </td>
    </tr><tr>
      <td>Restrição</td>
      <td>
        <ul>
          <li>O artigo deve estar no formato pdf.</li>
          <li>O sistema deve ter interface amigável.</li>
        </ul>
      </td>
    </tr>
</table>

<table> <tr> <th>Título</th> <th align="left">Editar Artigo</th>
    </tr><tr>
      <td>Objetivo</td>
      <td>O Editor altera informações de um artigo já disponibilizado.</td>
    </tr><tr>
      <td>Contexto</td>
      <td>Editor logado na página de edição de artigos.</td>
    </tr><tr>
      <td>Atores</td>
      <td>Sistema, Base de Dados e Editor.</td>
    </tr><tr>
      <td>Recursos</td>
      <td>Evento, edição, título e dados do artigo que são alterados.</td>
    </tr><tr>
      <td>Exceções</td>
      <td>
        <ul>
          <li>Algum campo ficou em branco. [Avisa quais campos não foram preenchidos]</li>
        </ul>
      </td>
    </tr><tr>
      <td>Episódios</td>
      <td>
        <ul>
          <li>Sistema mostra ao Editor quais eventos e edições ele pode alterar.</li>
          <li>Editor seleciona o evento e a edição que possui o artigo que ele deseja editar.</li>
          <li>Sistema lista os artigos do evento e edição selecionado.</li>
          <li>Editor seleciona o artigo que deseja editar.</li>
          <li>Sistema preenche campos com as informações do artigo.</li>
          <li>Editor altera os campos desejados.</li>
          <li>Editor confirma alterações do artigo.</li>
          <li>Sistema informa que artigo foi alterado com sucesso.</li>
        </ul>
      </td>
    </tr>
    </tr><tr>
      <td>Restrição</td>
      <td>O sistema deve ter interface amigável.</td>
    </tr>
</table>

<table> <tr> <th>Título</th> <th align="left">Exibir Página</th>
    </tr><tr>
      <td>Objetivo</td>
      <td>Exibir a página inicial de um evento para um Leitor.</td>
    </tr><tr>
      <td>Contexto</td>
      <td>Leitor está em um navegador.</td>
    </tr><tr>
      <td>Atores</td>
      <td>Sistema, Base de Dados e Leitor.</td>
    </tr><tr>
      <td>Recursos</td>
      <td>Endereço da página, título, resumo, logotipo e edições do evento.</td>
    </tr><tr>
      <td>Episódios</td>
      <td>
        <ul>
          <li>Leitor abre a página do evento.</li>
          <li>Sistema obtém da base de dados os dados do evento.</li>
          <li>Sistema exibe os dados do evento.<li>
          <li>Sistema lista as edições do evento.</li>
          <li>Se o Leitor quiser buscar por um artigo</li>
            <ul>
              <li>Leitor digita as informações do artigo.</li>
              <li>Sistema retorna o resultado da busca.</li>
            </ul>
          </li>
        </ul>
      </td>
    </tr>
    </tr><tr>
      <td>Restrição</td>
      <td>
        <ul>
          <li>O sistema deve ter interface amigável.</li>
          <li>A busca deve ser realizada pelo Google Search.</li>
        </ul>
      </td>
    </tr>
</table>

<table> <tr> <th>Título</th> <th align="left">Listar Por Edição</th>
    </tr><tr>
      <td>Objetivo</td>
      <td>Leitor visualiza todos os artigos de uma edição de um evento.</td>
    </tr><tr>
      <td>Contexto</td>
      <td>O cenário Exibir Página é pré-requisito.</td>
    </tr><tr>
      <td>Atores</td>
      <td>Sistema, Base de Dados e Editor.</td>
    </tr><tr>
      <td>Recursos</td>
      <td>Ano e artigos da edição. Título, autores, palavras-chaves, resumo, número de citações, número de downloads e link para pdf dos artigos listados.</td>
    </tr><tr>
      <td>Episódios</td>
      <td>
        <ul>
          <li>Sistema obtém da base de dados a lista dos artigos da edição.</li>
          <li>Sistema exibe os artigos e seus dados (Título, autores, palavras-chaves, resumo, número de citações, número de downloads e link.</li>
          <li>Se o Leitor quiser baixar um artigo</li>
            <ul>
              <li>Leitor acessa link para o pdf do artigo.</li>
              <li>Sistema incrementa o número de downloads do artigo.</li>
            </ul>
          </li>
        </ul>
      </td>
    </tr>
    </tr><tr>
      <td>Restrição</td>
      <td>O sistema deve ter interface amigável.</td>
    </tr>
</table>

<table> <tr> <th>Título</th> <th align="left">Listar Mais Citados</th>
    </tr><tr>
      <td>Objetivo</td>
      <td>Leitor visualiza quais são os artigos mais citados de um evento.</td>
    </tr><tr>
      <td>Contexto</td>
      <td>O cenário Exibir Página é pré-requisito.</td>
    </tr><tr>
      <td>Atores</td>
      <td>Sistema, Base de Dados e Leitor.</td>
    </tr><tr>
      <td>Recursos</td>
      <td>Número de citações do artigo. Título, autores, palavras-chaves, resumo, número de citações, número de downloads e link para pdf dos artigos listados.</td>
    </tr><tr>
      <td>Episódios</td>
      <td>
        <ul>
          <li>Leitor clica no link de mais citados.</li>
          <li>Sistema obtém da Base de Dados a lista de artigos ordenada pelo número de citações.</li>
          <li>Sistema obtém da Base de Dados as informações dos artigos mais citados.</li>
          <li>Sistema exibe para o Leitor os dados dos artigos, mantendo a ordem pelo número de citações.</li>
          <li>Se o Leitor quiser baixar um artigo</li>
            <ul>
              <li>Leitor acessa link para o pdf do artigo.</li>
              <li>Sistema incrementa o número de downloads do artigo.</li>
            </ul>
          </li>
        </ul>
      </td>
    </tr><tr>
      <td>Restrição</td>
      <td>
        <ul>
          <li>O sistema deve ter interface amigável.</li>
          <li>A busca deve ser realizada pelo Google Search.</li>
        </ul>
      </td>
    </tr>
</table>

<table> <tr> <th>Título</th> <th align="left">Atualiza Citações</th>
    </tr><tr>
      <td>Objetivo</td>
      <td>Sistema atualiza o número de citações de um artigo.</td>
    </tr><tr>
      <td>Contexto</td>
      <td>É feito semanalmente.</li>
      </td>
    </tr><tr>
      <td>Atores</td>
      <td>Sistema, Base de Dados e Google Scholar.</td>
    </tr><tr>
      <td>Recursos</td>
      <td>Nome do artigo, autores, página de resultados da busca e número de citações.</td>
    </tr><tr>
      <td>Exceções</td>
      <td>
        <ul>
          <li>Query foi bloqueada. [Mantem o número anterior de citações]</li>
        </ul>
      </td>
    </tr><tr>
      <td>Episódios</td>
      <td>
        <ul>
          <li>Sistema realiza busca com base no nome do artigo e do autores.</li>
          <li>Scholar retorna a página de resultados da busca.</li>
          <li>Sistema faz o parse da página, somando o número de citações das ocorrências do artigo.</li>
          <li>Sistema atualiza o número de citações do artigo na Base de Dados.</li>
        </ul>
      </td>
    </tr>
    </tr><tr>
      <td>Restrição</td>
      <td>Usa o sistema de busca do Google Scholar.</td>
    </tr>
</table>

## Referências  
http://www-di.inf.puc-rio.br/~karin/pos/cenario.pdf  
http://www-di.inf.puc-rio.br/~julio/Slct-pub/rej2000.pdf  
