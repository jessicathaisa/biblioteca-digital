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

## Cenários do Modelo

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

