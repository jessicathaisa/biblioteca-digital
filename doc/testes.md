# Testes e Inspeções

# Planejamento dos Testes
Como o sistema possui bastante interação com usuário, foi decidido que os testes seriam feitos de forma manual, seguindo os seguites casos de teste.

# Casos de Teste

##Cenário 1: 
- Login no sistema

###Testes:

####Caso 1:
- Par não Cadastrado.

#####Resumo: 
- Ao entrar no sistema é pedido ao usuário o login e senha do mesmo para que ele se autentique e possa usar o sistema.

#####Pre-Condições e Entradas: 
- O usuário deve saber o seu login e senha e inseri-los nas caixas de texto.
- O usuário está na página de login

#####Ação: 
- O usuário tenta inserir os dados requeridos nas caixas de texto.

#####Resultados esperados e pós condições:
- Aparece um texto na página indicando que os dados inseridos não existem no sistema.


####Caso 2:
- Algum campo ficou em branco.

#####Resumo: 
- Ao entrar no sistema é pedido ao usuário o login e senha do mesmo para que ele se autentique e possa usar o sistema.

#####Pre-Condições e Entradas: 
- O usuário deve saber o seu login e senha e inseri-los nas caixas de texto.
- O usuário está na página de login

#####Ação: 
- O usuário tenta inserir os dados requeridos nas caixas de texto entretanto, por algum motivo, deixando um campo vazio.

#####Resultados esperados e pós condições:
- Aparece um texto na página indicando que o usuário não preencheu todos os campos e avisa qual deles.


####Caso 3:
- O usuário não lembra de seus dados de login.

#####Resumo: 
- Ao entrar no sistema é pedido ao usuário o login e senha do mesmo para que ele se autentique e possa usar o sistema.

#####Pre-Condições e Entradas: 
- O usuário deve saber o seu login e senha e inseri-los nas caixas de texto.
- O usuário está na página de login

#####Ação: 
- O usuário tenta inserir os dados requeridos nas caixas de texto entretanto, por esquecimento, o mesmo tem o acesso negado.

#####Resultados esperados e pós condições:
- Aparece um texto na página indicando que o usuário errou na entrada dos dados.


####Caso 4:
- O usuário consegue fazer o login.

#####Resumo: 
- Ao entrar no sistema é pedido ao usuário o login e senha do mesmo para que ele se autentique e possa usar o sistema.

#####Pre-Condições e Entradas: 
- O usuário deve saber o seu login e senha e inseri-los nas caixas de texto.
- O usuário está na página de login

#####Ação: 
- O usuário tenta inserir os dados requeridos nas caixas de texto e tem seu acesso permitido.

#####Resultados esperados e pós condições:
- Aparece a pagina correspondente ao tipo de login efetuado.


##Cenário 2: 
- Esqueceu dos Dados

###Testes:

####Caso 1:
- Email não cadastrado no Sistema

#####Resumo: 
- Ao entrar no sistema é pedido ao usuário o login e senha do mesmo, entretanto, caso ele não se lembre, tenha uma forma de recuperar o login e senha.

#####Pre-Condições e Entradas: 
- O usuário deve saber o seu e-mail e inseri-lo na caixa de texto.
- O usuário está na página de login  

#####Ação: 
- O usuário tenta inserir o dados requeridos na caixa de texto.

#####Resultados esperados e pós condições:
- Aparece uma página indicando que o e-mail inserido não está cadastrado no sistema.

####Caso 2:
- Recuperação bem sucedida

#####Resumo: 
- Ao entrar no sistema é pedido ao usuário o login e senha do mesmo, entretanto, caso ele não se lembre, tenha uma forma de recuperar os dados.

#####Pre-Condições e Entradas: 
- O usuário deve saber o seu e-mail e inseri-lo na caixa de texto.
- O usuário está na página de login

#####Ação: 
- O usuário tenta inserir o dados requeridos na caixa de texto.

#####Resultados esperados e pós condições:
- Aparece uma página indicando que os dados requeridos foram enviados.


##Cenário 3: 
- Alterar Senha

###Testes:

####Caso 1:
- Os dois campos de nova senha não são iguais

#####Resumo: 
- Ao solicitar a troca de senha é pedido uma nova senha a ser inserida em dois campos, a senha inserida tem que ser igual em ambos.

#####Pre-Condições e Entradas: 
- O usuário tem que estar logado.
- O usuário está na página de alteração de senha

#####Ação: 
- O usuário tenta inserir o dados requeridos nos campos de texto.

#####Resultados esperados e pós condições:
- Aparece uma página indicando que os campos de nova senha precisam ter senhas iguais.

####Caso 2:
- Alteração bem sucedida

#####Resumo: 
- Ao solicitar a troca de senha é pedido uma nova senha a ser inserida em dois campos, a senha inserida tem que ser igual em ambos.

#####Pre-Condições e Entradas: 
- O usuário tem que estar logado.
- O usuário está na página de alteração de senha

#####Ação: 
- O usuário tenta inserir o dados requeridos na caixa de texto.

#####Resultados esperados e pós condições:
- Aparece uma página indicando que a senha foi alterada com sucesso.


##Cenário 4: 
- Cadastrar Editor

###Testes:

####Caso 1:
- Identificador ou e-mail de usuário já cadastrado 

#####Resumo: 
- Ao cadastrar um novo usuário no sistema o e-mail usado para o novo cadastro já esta atrelado a um usuário.

#####Pre-Condições e Entradas: 
- O usuário tem que estar logado.
- Um usuário administrador está na página de cadastro de novo usuário.

#####Ação: 
- O usuário tenta inserir o dados para o cadastro de um novo usuário.

#####Resultados esperados e pós condições:
- Aparece uma página indicando que o e-mail usado já está atrelado a algum usuário.

####Caso 2:
- Cadastro bem sucedido

#####Resumo: 
- Ao cadastrar um novo usuário o mesmo ocorre com sucesso.

#####Pre-Condições e Entradas: 
- O usuário tem que estar logado.
- Um usuário administrador está na página de cadastro de novo usuário.

#####Ação: 
- O usuário tenta inserir o dados para o cadastro de um novo usuário.

#####Resultados esperados e pós condições:
- Aparece uma página indicando que o novo usuário foi cadastrado com sucesso.


##Cenário 5: 
- Cadastrar Evento

###Testes:

####Caso 1:
- Já existe um evento com mesmo nome ou sigla

#####Resumo: 
- Ao cadastrar um novo evento no sistema o mesmo indica que já existe outro com a mesma designação.

#####Pre-Condições e Entradas: 
- O usuário tem que estar logado.
- Um usuário administrador está na página de cadastro de novo evento.

#####Ação: 
- O usuário tenta inserir o dados para o cadastro de um novo evento.

#####Resultados esperados e pós condições:
- Aparece uma página indicando que já existe outro evento com a mesma designação.

####Caso 2:
- Algum campo ficou em branco

#####Resumo: 
- Ao cadastrar um novo evento no sistema o usuário deixou algum campo em branco.

#####Pre-Condições e Entradas: 
- O usuário tem que estar logado.
- Um usuário administrador está na página de cadastro de novo evento.

#####Ação: 
- O usuário tenta inserir o dados para o cadastro de um novo evento.

#####Resultados esperados e pós condições:
- Aparece uma página indicando que o algum campo ficou em branco e indica qual ou quais.

####Caso 3:
- Criação do evento bem sucedida

#####Resumo: 
- Ao cadastrar um novo evento no sistema o mesmo é cadastrado com sucesso.

#####Pre-Condições e Entradas: 
- O usuário tem que estar logado.
- Um usuário administrador está na página de cadastro de novo evento.

#####Ação: 
- O usuário tenta inserir o dados para o cadastro de um novo evento.

#####Resultados esperados e pós condições:
- Aparece uma página indicando que o evento foi cadastrado com sucesso.



##Cenário 6: 
- Cadastrar Edição de Evento

###Testes:

####Caso 1:
- Ano digitado é inválido

#####Resumo: 
- Ao cadastrar uma nova edição de evento no sistema o mesmo indica que o ano digitado é invalido.

#####Pre-Condições e Entradas: 
- O usuário tem que estar logado.
- Um usuário administrador está na página de cadastro de nova edição de evento.

#####Ação: 
- O usuário tenta inserir o dados para o cadastro de uma nova edição de evento.

#####Resultados esperados e pós condições:
- Aparece uma página indicando que o campo de ano possui um valor inválido.

####Caso 2:
- Já existe uma edição naquele ano

#####Resumo: 
- Ao cadastrar um novo evento no sistema o mesmo já possui edição naquele ano.

#####Pre-Condições e Entradas: 
- O usuário tem que estar logado.
- Um usuário administrador está na página de cadastro de nova edição de evento.

#####Ação: 
- O usuário tenta inserir o dados para o cadastro de uma nova edição de evento.

#####Resultados esperados e pós condições:
- Aparece uma página indicando que a edição do evento já existe.

####Caso 3:
- Cadastro de edição de evento bem sucedida

#####Resumo: 
- Ao cadastrar uma nova edição de evento no sistema a mesma é cadastrada com sucesso.

#####Pre-Condições e Entradas: 
- O usuário tem que estar logado.
- Um usuário administrador está na página de cadastro de nova edicao de evento.

#####Ação: 
- O usuário tenta inserir o dados para o cadastro de uma nova edição de evento.

#####Resultados esperados e pós condições:
- Aparece uma página indicando que a edição de evento foi cadastrada com sucesso.
 


##Cenário 7: 
- Associar Editor

###Testes:

####Caso 1:
- Editor não cadastrado

#####Resumo: 
- Ao associar um editor com uma edição de evento a mesma indica que não encontrou o editor inserido.

#####Pre-Condições e Entradas: 
- O usuário tem que estar logado.
- Um usuário administrador está na página de associação de editor.

#####Ação: 
- O usuário tenta associar um editor a uma edição de evento.

#####Resultados esperados e pós condições:
- Aparece uma página indicando que o editor não foi encontrado.

####Caso 2:
- Associação bem sucedida

#####Resumo: 
- Ao associar um editor com uma edição de evento a mesma indica que o editor foi associado com sucesso.

#####Pre-Condições e Entradas: 
- O usuário tem que estar logado.
- Um usuário administrador está na página de associação de editor.

#####Ação: 
- O usuário tenta associar um editor a uma edição de evento.

#####Resultados esperados e pós condições:
- Aparece uma página indicando que a associação do editor com a edição do evento foi bem sucedida.
 


##Cenário 8: 
- Incluir Artigo

###Testes:

####Caso 1:
- Dados preenchidos de forma incorreta 

#####Resumo: 
- Ao incluir um novo artigo os dados foram preenchidos de forma incorreta.

#####Pre-Condições e Entradas: 
- O usuário tem que estar logado.
- Um usuário editor está na página de inclusão de novo artigo.

#####Ação: 
- O usuário tenta inserir o dados para a inclusão de um novo artigo.

#####Resultados esperados e pós condições:
- Aparece uma mensagem dizendo para o usuário tentar novamente.

####Caso 2:
- Algum campo ficou em branco

#####Resumo: 
- Ao incluir um novo artigo algum dos campos não foi preenchido.

#####Pre-Condições e Entradas: 
- O usuário tem que estar logado.
- Um usuário editor está na página de inclusão de novo artigo.

#####Ação: 
- O usuário tenta inserir o dados para a inclusão de um novo artigo.

#####Resultados esperados e pós condições:
- Aparece uma página indicando que algum campo ficou em branco e indica qual ou quais.

####Caso 3:
- Inclusão de artigo bem sucedida

#####Resumo: 
- Ao cadastrar um novo artigo no sistema o mesmo é incluído com sucesso.

#####Pre-Condições e Entradas: 
- O usuário tem que estar logado.
- Um usuário editor está na página de inclusão de novo artigo.

#####Ação: 
- O usuário tenta inserir o dados para a inclusão de um novo artigo.

#####Resultados esperados e pós condições:
- Aparece uma página indicando que o artigo foi incluído com sucesso.



##Cenário 9: 
- Editar Artigo

###Testes:

####Caso 1:
- Algum campo ficou em branco

#####Resumo: 
- Ao editar um artigo algum campo ficou em branco.

#####Pre-Condições e Entradas: 
- O usuário tem que estar logado.
- Um usuário editor está na página de edição de artigo.

#####Ação: 
- O usuário tenta editar o conteúdo de um artigo.

#####Resultados esperados e pós condições:
- Aparece uma página indicando que algum campo ficou em branco e indica qual ou quais.

####Caso 2:
- Edição de artigo bem sucedida

#####Resumo: 
- Ao editar um artigo a edição é completada com sucesso.

#####Pre-Condições e Entradas: 
- O usuário tem que estar logado.
- Um usuário editor está na página de edição de artigo.

#####Ação: 
- O usuário tenta editar o conteúdo de um artigo.

#####Resultados esperados e pós condições:
- Aparece uma página indicando que a edição ocorreu com sucesso.



##Cenário 10: 
- Buscar Artigo

###Testes:

####Caso 1:
- Nenhum resultado foi encontrado.

#####Resumo: 
- Ao buscar um artigo nenhum resultado foi encontrado.

#####Pre-Condições e Entradas: 
- O usuário tem que estar logado.
- Um usuário está na página de busca de artigo.

#####Ação: 
- O usuário tenta fazer a busca de um artigo por palavras chave.

#####Resultados esperados e pós condições:
- Aparece a pagina de resultados vazia.

####Caso 2:
- Resultados encontrados.

#####Resumo: 
- Ao buscar um artigo foram encontrados resultados.

#####Pre-Condições e Entradas: 
- O usuário tem que estar logado.
- Um usuário está na página de busca de artigo.

#####Ação: 
- O usuário tenta fazer a busca de um artigo por palavras chave.

#####Resultados esperados e pós condições:
- Aparece a pagina de resultados populada.



##Cenário 11: 
- Atualiza Citações

###Testes:

####Caso 1:
- Query foi bloqueada.

#####Resumo: 
- Ao atualizar o numero de citações de um artigo, a query ao banco de dados que realiza a atualização é bloqueada.

#####Pre-Condições e Entradas: 
- Usa o sistema de busca do Google Scholar.

#####Ação: 
- O usuário tenta fazer a atualização do numero de citações de um artigo.

#####Resultados esperados e pós condições:
- O número de citações é mantido.

####Caso 2:
- Atualização do numero de citações bem sucedida.

#####Resumo: 
- Ao atualizar o numero de citações de um artigo a mesma é feita com sucesso.

#####Pre-Condições e Entradas: 
- Usa o sistema de busca do Google Scholar.

#####Ação: 
- O usuário tenta fazer a atualização do numero de citações de um artigo.

#####Resultados esperados e pós condições:
- O número de citações é atualizado.
