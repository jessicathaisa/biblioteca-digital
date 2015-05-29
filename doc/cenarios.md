# Cenários

<table> <tr> <th>Título</th>
    <th align="left">Login no Sistema</th>
      </tr><tr>
        <td>Objetivo</td>
        <td>Usuário obtém acesso à área restrita.</td>
      </tr><tr>
        <td>Contexto</td>
        <td>Usuário está na página http de login.</td>
      </tr><tr>
        <td>Atores</td>
            <td>Sistema e Usuário.</td>
      </tr><tr>
        <td>Recursos</td>
        <td>Identificador e senha do usuário.</td>
      </tr><tr>
        <td>Exceções</td>
        <td>
          <ul>
            <li>Par <identificar, senha> não está cadastrado. [Avisa que o par não está cadastrado]</li>
            <li>Algum campo ficou em branco. [Avisa quais campos não foram preenchidos]</li>
            <li>O usuário não lembra de seus dados de login. [Esqueceu dos Dados]</li>
          </ul>
        </td>
      </tr><tr>
        <td>Episódios</td>
        <td>
          <ul>
            <li>Usuário preenche os campos de login e senha.</li>
            <li>Usuário confirma.</li>
            <li>Sistema abre página http de acesso restrito.</li>
          </ul>
        </td>
      </tr>
</table>

<table> <tr> <th>Título</th>
    <th align="left">Esqueceu dos Dados</th>
      </tr><tr>
        <td>Objetivo</td>
        <td>Enviar os dados de login para o email do usuário.</td>
      </tr><tr>
        <td>Contexto</td>
        <td>Usuário está na página http de login.</td>
      </tr><tr>
        <td>Atores</td>
        <td>Sistema e Usuário.</td>
      </tr><tr>
        <td>Recursos</td>
        <td>Email do usuário.</td>
      </tr><tr>
        <td>Exceções</td>
        <td>
          <ul>
            <li>Email não cadastrado no Sistema. [Avisa que o email não está cadastrado]</li>
          </ul>
        </td>
      </tr><tr>
        <td>Episódios</td>
        <td>
          <ul>
            <li>Usuário informa ao Sistema que esqueceu a senha.</li>
            <li>Sistema envia um email ao usuário com os dados de login.</li>
            <li>Sistema avisa que enviou os dados.</li>
          </ul>
        </td>
      </tr>
</table>

<table> <tr> <th>Título</th>
    <th align="left">Cadatrar Editor</th>
      </tr><tr>
        <td>Objetivo</td>
        <td>Cadastrar um novo usuário no Sistema.</td>
      </tr><tr>
        <td>Contexto</td>
        <td>Admistrador logado no Sistema na página de cadastro de novo usuário.</td>
      </tr><tr>
        <td>Atores</td>
        <td>Sistema e Administrador.</td>
      </tr><tr>
        <td>Recursos</td>
        <td>Identificador e email do novo usuário.</td>
      </tr><tr>
        <td>Exceções</td>
        <td>
          <ul>
            <li>Identificador/email de usuário já cadastrado [Avisa que identificador/email já está em uso]</li>
            <li>
          </ul>
        </td>
      </tr><tr>
        <td>Episódios</td>
        <td>
          <ul>
            <li>Administrador informa os dados pedidos.</li>
            <li>Sistema pede confirmação.</li>
            <li>Administrador confirma.</li>
            <li>Sistema gera uma senha com números e letras aleatórios.</li>
            <li>Sistema informa que o novo usuário foi cadastrado com sucesso.</li>
            <li>Sistema envia para o email do novo usuário seu login e sua senha.</li>
          </ul>
        </td>
      </tr>
</table>

<table> <tr> <th>Título</th>
    <th align="left">Cadastrar Evento Ciêntífico</th>
      </tr><tr>
        <td>Objetivo</td>
        <td>Disponibilizar no Sistema um novo evento ciêntífico.</td>
      </tr><tr>
        <td>Contexto</td>
        <td>Admistrador logado no Sistema na página de cadastro de novo evento.</td>
      </tr><tr>
        <td>Atores</td>
        <td>Sistema e Adminstrador.</td>
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
            <li>Sistema pede a confirmação dos dados.</li>
            <li>Administrador confirma.</li>
            <li>Sistema informa que o novo evento foi cadastrado com sucesso.</li>
          </ul>
        </td>
      </tr>
</table>

<table> <tr> <th>Título</th>
    <th align="left">Cadastrar Edição</th>
      </tr><tr>
        <td>Objetivo</td>
        <td>Cadastrar uma nova edição de um evento.</td>
      </tr><tr>
        <td>Contexto</td>
        <td>Admistrador logado no Sistema na página de cadastro de nova edição.</td>
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

<table> <tr> <th>Título</th>
    <th align="left">Associar Editor</th>
      </tr><tr>
        <td>Objetivo</td>
        <td>Permitir que um Editor possa inserir e alterar artigos de uma edição de um evento.</td>
      </tr><tr>
        <td>Contexto</td>
        <td>Administrador logado na página de associar Editor.</td>
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

<table> <tr> <th>Título</th>
    <th align="left">Editor inclui um artigo no Sistema</th>
      </tr><tr>
        <td>Objetivo</td>
        <td>Disponibilizar os dados do artigo para a comunidade.</td>
      </tr><tr>
        <td>Contexto</td>
        <td>Editor logado na página de cadastro de novo artigo.</td>
      </tr><tr>
        <td>Atores</td>
        <td>Sistema e Editor.</td>
      </tr><tr>
        <td>Recursos</td>
        <td>
          <ul>
            <li>Artigo cientifíco em pdf, título, ano, autores, resumo e palavras-chaves.</li>
            <li>Edição e congresso relacionado ao artigo.</li>
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
            <li>Sistema mostra ao Editor quais evetos ele pode inserir artigos.</li>
            <li>Editor seleciona o Congresso no qual o artigo pertence.</li>
            <li>Editor abre a área de Cadastro de Artigos.</li>
            <li>Editor digita os dados do artigo.</li>
            <li>Editor faz upload do PDF do artigo.</li>
            <li>Sistema pede para o Editor confirmar o cadastro.</li>
            <li>Editor confirma suas alterações.</li>
            <li>Sistema informa que o cadastro foi feito com sucesso.</li>
          </ul>
        </td>
      </tr>
</table>

## Referências  
http://www-di.inf.puc-rio.br/~karin/pos/cenario.pdf  
http://www-di.inf.puc-rio.br/~julio/Slct-pub/rej2000.pdf  

## Template utilizado  

<table> <tr> <th>Título</th>
    <th align="left"></th>
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
