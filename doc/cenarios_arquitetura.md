# Cenários no Momento da Arquitetura

## Cenário de Integração

<table> <tr> <th>Título</th> <th align="left">Software Biblioteca Digital</th>
    </tr><tr>
      <td>Objetivo</td>
      <td>Disponibilizar artigos científicos e classificá-los por número de citações.</td>
    </tr><tr>
      <td>Contexto</td>
      <td>Sistema web.</td>
    </tr><tr>
      <td>Atores</td>
      <td>Sistema, Administor, Editor e Leitor.</td>
    </tr><tr>
      <td>Recursos</td>
      <td>Artigos científicos.</td>
    </tr><tr>
      <td>Episódios</td>
      <td>
        <ul>
          <li>Administrador cadatra Editor.</li>
          <li>Administrador cadastra evento e edição.</li>
          <li>Administrador associa Editor à uma edição.</li>
          <li>Editor cadastra artigos ciêntíficos.</li>
          <li>Sistema disponibiliza artigos.</li>
          <li>Leitor busca e obtém artigos desejados.</li>
        </ul>
      </td>
    </tr>
</table>

## Cenários do Model

TODO

## Cenários da Visão

<table> <tr> <th>Título</th> <th align="left">Exibe Página de Login no Sistema</th>
    </tr><tr>
      <td>Objetivo</td>
      <td>Usuário preenche campos de texto com login e senha. O sistema informa que o login foi realizado e exibe links para as funcionalidades.</td>
    </tr><tr>
      <td>Contexto</td>
      <td>O usuário deve acessar a página host/login em um browser atual.</td>
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
          <li>Sistema exibe página de acesso restrito.</li>
          <li>Se o Usuário for o Administrador, o Sistema exibe links para as funcionalidades de Alterar Senha, Incluir Artigo, Cadastrar Evento, Cadastrar Edição e Associar Editor.</li>
          <li>Se o Usuário for um Editor, o Sistema exibe links para as funcionalidades de Alterar Senha, Incluir Artigo e Editar Artigo.<li>
        </ul>
      </td>
    </tr>
</table>

<table> <tr> <th>Título</th> <th align="left">Exibe Página de Esqueceu dos Dados</th>
    </tr><tr>
      <td>Objetivo</td>
      <td>Usuário preenche campo com seu email. Sistema informa que os dados foram enviados.</td>
    </tr><tr>
      <td>Contexto</td>
      <td>Pré requisito: Exibe Página de Login no Sistema.</td>
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
          <li>Sistema exibe mensagem dizendo que enviou os dados para o email do usuário.</li>
        </ul>
      </td>
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
          <li>Pré requisito: Exibe Página de Login no Sistema.</li>
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
          <li>Sistema exibe mensagem dizendo que a senha foi alterada.</li>
        </ul>
      </td>
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
          <li>Pré requisito: Exibe Página de Login no Sistema.</li>
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
          <li>Sistema informa que o usuário foi cadastrado.</li>
        </ul>
      </td>
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
          <li>Pré requisito: Exibe Página de Login no Sistema.</li>
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
          <li>Administrador digita o nome.<li>
          <li>Administrador digita a sigla.<li>
          <li>Administrador abre o popup para o buscar o logotipo.<li>
          <li>Administrador digita o resumo.<li>
          <li>Administrador clica em confirmar.<li>
          <li>Sistema exibe mensagem dizendo que o novo evento foi cadastrado com sucesso.</li>
        </ul>
      </td>
    </tr>
</table>

<!--
<table> <tr> <th>Título</th> <th align="left">Cadastrar Edição</th>
    </tr><tr>
      <td>Objetivo</td>
      <td>Cadastrar uma nova edição de um evento.</td>
    </tr><tr>
      <td>Contexto</td>
      <td>
        <ul>
          <li>O cenário Login no Sistema é pré-requisito.</li>
          <li>Admistrador está na página de cadastro de nova edição.</li>
        </ul>
      </td>
    </tr><tr>
      <td>Atores</td>
      <td>Sistema e Administrador.</td>
    </tr><tr>
      <td>Recursos</td>
      <td>Evento e ano da edição.</td>
    </tr><tr>
      <td>Exceções</td>
      <td>
        <ul>
          <li>Ano digitado é inválido. [Avisa que o ano é inválido]</li>
          <li>Já existe uma edição naquele ano. [Avisa que a edição já existe]</li>
        </ul>
      </td>
    </tr><tr>
      <td>Episódios</td>
      <td>
        <ul>
          <li>Sistema mostra os eventos cadastrados.</li>
          <li>Administrador seleciona o evento que terá uma nova edição.</li>
          <li>Administrador insere o ano do evento.</li>
          <li>Sistema informa que o evento foi cadastrado com sucesso.</li>
        </ul>
      </td>
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
      <td>Sistema e Administrador.</td>
    </tr><tr>
      <td>Recursos</td>
      <td>Identificador do Editor, evento e edição.</td>
    </tr><tr>
      <td>Exceções</td>
      <td>
        <ul>
          <li>Editor não cadastrado. [Avisa que não encontrou o Editor]</li>
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
          <li>Sistema pede para o Administrador confirmar.</li>
          <li>Administrador confirma</li>
          <li>Sistema informa que o Editor foi associado àquelas edições do evento.</li>
        </ul>
      </td>
    </tr>
</table>

<table> <tr> <th>Título</th> <th align="left">Incluir Artigo</th>
    </tr><tr>
      <td>Objetivo</td>
      <td>Disponibilizar os dados do artigo para a comunidade.</td>
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
      <td>Sistema e Editor.</td>
    </tr><tr>
      <td>Recursos</td>
      <td>
        <ul>
          <li>Artigo cientifíco em pdf, título, ano, autores, resumo e palavras-chaves.</li>
          <li>Edição e evento relacionado ao artigo.</li>
        </ul>
      </td>
    </tr><tr>
      <td>Exceção</td>
      <td>
        <ul>
          <li>Dados preenchidos de forma incorreta [Exibirá mensagem para tentar novamente].</li>
          <li>Algum campo ficou em branco. [Avisa quais campos não foram preenchidos]</li>
        </ul>
      </td>
    </tr><tr>
      <td>Episódio</td>
      <td>
        <ul>
          <li>Sistema mostra ao Editor quais eventos e edições ele pode inserir artigos.</li>
          <li>Editor seleciona o evento que o artigo pertence.</li>
          <li>Editor digita os dados do artigo.</li>
          <li>Editor faz upload do PDF do artigo.</li>
          <li>Sistema pede para o Editor confirmar o cadastro.</li>
          <li>Editor confirma suas alterações.</li>
          <li>Sistema informa que o cadastro foi feito com sucesso.</li>
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
      <td>Sistema e Editor.</td>
    </tr><tr>
      <td>Recursos</td>
      <td>Dados do artigo que são alterados.</td>
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
          <li>Sistema pede confirmação do editor.</li>
          <li>Editor confirma alterações.</li>
          <li>Sistema informa que artigo foi alterado com sucesso.</li>
        </ul>
      </td>
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
      <td>Sistema e Leitor.</td>
    </tr><tr>
      <td>Recursos</td>
      <td>Endereço da página do evento.</td>
    </tr><tr>
      <td>Episódios</td>
      <td>
        <ul>
          <li>O Leitor abre a página do evento.</li>
          <li>O sistema lista as edições do evento.<li>
        </ul>
      </td>
    </tr>
</table>

<table> <tr> <th>Título</th> <th align="left">Buscar Artigo</th>
    </tr><tr>
      <td>Objetivo</td>
      <td>Leitor encontra um artigo de um evento.</td>
    </tr><tr>
      <td>Contexto</td>
      <td>O cenário Exibir Página é pré-requisito.</td>
    </tr><tr>
      <td>Atores</td>
      <td>Sistema, Busca Google e Leitor.</td>
    </tr><tr>
      <td>Recursos</td>
      <td>Palavras chaves para encontrar o artigo.</td>
    </tr><tr>
      <td>Exceções</td>
      <td>
        <ul>
          <li>Nenhum resultado foi encontrado.</li>
        </ul>
      </td>
    </tr><tr>
      <td>Episódios</td>
      <td>
        <ul>
          <li>Leitor digita no campo da Busca Google as palavras chaves.</li>
          <li>Busca Google retorna os links para os artigos encontrados.</li>
        </ul>
      </td>
    </tr>
</table>

<table> <tr> <th>Título</th> <th align="left">Listar Por Edição</th>
    </tr><tr>
      <td>Objetivo</td>
      <td>Leitor vizualiza todos os artigos de uma edição de um evento.</td>
    </tr><tr>
      <td>Contexto</td>
      <td>O cenário Exibir Página é pré-requisito.</td>
    </tr><tr>
      <td>Atores</td>
      <td>Sistema e Editor.</td>
    </tr><tr>
      <td>Recursos</td>
      <td>Ano da edição desejada.</td>
    </tr><tr>
      <td>Exceções</td>
      <td>N/A</td>
    </tr><tr>
      <td>Episódios</td>
      <td>
        <ul>
          <li>Sistema lista os anos das edições que o evento ocorreu.</li>
          <li>Leitor seleciona qual edição deseja.</li>
          <li>Sistema lista os artigos da edição escolhida.</li>
        </ul>
      </td>
    </tr>
</table>

<table> <tr> <th>Título</th> <th align="left">Listar Mais Citados</th>
    </tr><tr>
      <td>Objetivo</td>
      <td>Leitor sabe quais são os artigos, tópicos e autores mais citados de um evento.</td>
    </tr><tr>
      <td>Contexto</td>
      <td>O cenário Exibir Página é pré-requisito.</td>
    </tr><tr>
      <td>Atores</td>
      <td>Sistema e Leitor.</td>
    </tr><tr>
      <td>Recursos</td>
      <td>Número de citações dos artigo.</td>
    </tr><tr>
      <td>Episódios</td>
      <td>
        <ul>
          <li>Leitor clica no link de mais citados.</li>
          <li>Sistema mostra uma lista de tópicos, ordenada pela soma das citações dos artigos de cada um.</li>
          <li>Sistema mostra uma lista de autores, ordenada pela soma das citações de seus artigos.</li>
          <li>Sistema mostra uma lista de artigos, ordenada pelo número de citações.</li>
        </ul>
      </td>
    </tr>
</table>

<table> <tr> <th>Título</th> <th align="left">Download de Artigo</th>
    </tr><tr>
      <td>Objetivo</td>
      <td>Leitor vizualiza o pdf de um artigo.</td>
    </tr><tr>
      <td>Contexto</td>
      <td>Entre os cenários Buscar Artigo, Listar por Edição e Listar Mais citados, pelo menos um deles é pré-requisito.</td>
    </tr><tr>
      <td>Atores</td>
      <td>Sistema e Leitor.</td>
    </tr><tr>
      <td>Recursos</td>
      <td>Link para o pdf do artigo.</td>
    </tr><tr>
      <td>Episódios</td>
      <td>
        <ul>
          <li>Leitor realiza download ao acessar link para o pdf do artigo.</li>
          <li>Sistema incrementa o número de downloads do artigo.</li>
        </ul>
      </td>
    </tr>
</table>

<table> <tr> <th>Título</th> <th align="left">Avaliar Artigo</th>
    </tr><tr>
      <td>Objetivo</td>
      <td>Leitor da uma nota, de 1 a 5, a um artigo</td>
    </tr><tr>
      <td>Contexto</td>
      <td>Entre os cenários Buscar Artigo, Listar por Edição e Listar Mais citados, pelo menos um deles é pré-requisito.</td>
    </tr><tr>
      <td>Atores</td>
      <td>Sistema e Leitor.</td>
    </tr><tr>
      <td>Recursos</td>
      <td>Nota do Leitor para o Artigo</td>
    </tr><tr>
      <td>Episódios</td>
      <td>
        <ul>
          <li>Sistema mostra interface para avaliar determinado artigo.</li>
          <li>Autor preenche a nota do artigo.</li>
          <li>Sistema contabiliza a nota do artigo e atualiza a média.</li>
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
      <td>
        <ul>
          <li>É feito semanalmente.</li>
          <li>Usa o sistema de busca do Google Scholar.</li>
        </ul>
      </td>
    </tr><tr>
      <td>Atores</td>
      <td>Sistema e Google Scholar.</td>
    </tr><tr>
      <td>Recursos</td>
      <td>Nome do artigo e autores.</td>
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
          <li>Sistema atualiza em seu banco de dados o número de citações do artigo.</li>
        </ul>
      </td>
    </tr>
</table>
-->

## Cenários do Controle

TODO

## Referências  
http://www-di.inf.puc-rio.br/~karin/pos/cenario.pdf  
http://www-di.inf.puc-rio.br/~julio/Slct-pub/rej2000.pdf  

## Template utilizado  

<table> <tr> <th>Título</th> <th align="left"></th>
    </tr><tr>
      <td>Objetivo</td>
      <td></td>
    </tr><tr>
      <td>Contexto</td>
      <td></td>
    </tr><tr>
      <td>Atores</td>
      <td></td>
    </tr><tr>
      <td>Recursos</td>
      <td></td>
    </tr><tr>
      <td>Exceções</td>
      <td>
        <ul>
          <li>.</li>
        </ul>
      </td>
    </tr><tr>
      <td>Episódios</td>
      <td>
        <ul>
          <li>.</li>
        </ul>
      </td>
    </tr>
</table>

