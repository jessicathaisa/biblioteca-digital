#Testes e Inspeções

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
- Aparece um texto na página indicando que os dados inseridos nao existem no sistema.


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
- Aparece um texto na página indicando que o usuário nao preencheu todos os campos e avisa qual deles.


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
- Ao entrar no sistema é pedido ao usuário o login e senha do mesmo, entretanto, caso ele nao se lembre, tenha uma forma de recuperar o login e senha.

#####Pre-Condições e Entradas: 
- O usuário deve saber o seu email e inseri-lo na caixa de texto.
- O usuário está na página de login  

#####Ação: 
- O usuário tenta inserir o dados requeridos na caixa de texto.

#####Resultados esperados e pós condições:
- Aparece uma página indicando que o email inserido nao está cadastrado no sistema.

####Caso 2:
- Recuperação bem sucedida

#####Resumo: 
- Ao entrar no sistema é pedido ao usuário o login e senha do mesmo, entretanto, caso ele nao se lembre, tenha uma forma de recuperar os dados.

#####Pre-Condições e Entradas: 
- O usuário deve saber o seu email e inseri-lo na caixa de texto.
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
- O susário está na página de alteração de senha

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
- O susário está na página de alteração de senha

#####Ação: 
- O usuário tenta inserir o dados requeridos na caixa de texto.

#####Resultados esperados e pós condições:
- Aparece uma página indicando que a senha foi alterada com sucesso.





