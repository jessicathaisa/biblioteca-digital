# Léxico Ampliado da Linguagem

Nome | Administrador
--- | :--
Tipo | Sujeito
Noção | Ator responsável pela criação de  congressos e edições e pelo cadastro editores.
Impacto | <ul><li>Cadastrar um novo congresso no sistema;</li><li>Cadastrar uma edição para um congresso;</li><li>Cadastrar o editor para uma edição de congresso.</li></ul>

Nome | Artigo científico
--- | :--
Tipo | Objeto
Noção | Texto científico publicado em um congresso.
Impacto | <ul><li>Pode ser escrito por mais de um autor;</li><li>Deve possuir um nome, um resumo e uma lista de palavras-chave;</li><li>Artigos podem fazer citações de outros artigos.</li></ul>

Nome | Artigos mais citados
--- | :--
Tipo | Objeto
Noção | Uma lista com os artigos científicos ordenada em ordem decrescente de número de citações.
Impacto | <ul><li>É visualizado pelo leitor;</li><li>é gerada automaticamente pelo sistema;</li><li>É filtrável.</li></ul>

Nome | Atualizar número de acessos
--- | :--
Tipo | Verbo
Noção | O sistema conta cada vez em que o artigo científico é aberto para visualização. Essa contagem será feita através da chamada de uma função do servidor que ao ser chamada para abrir determinado artigo incrementa uma unidade ao número de acessos.
Impacto | <ul><li>Após armazenado esse valor pode ser consultado pelos leitores do sistema.</li></ul>

Nome | Autor
--- | :--
Tipo | Objeto
Noção | Pessoa que participou no processo de escrita de um artigo científico.
Impacto | <ul><li>É cadastrado pelo Editor;</li><li>É utilizado com busca;</li><li>É ligado a um ou mais artigos;</li><li>É citado em artigos científicos.</li></ul>

Nome | Biblioteca digital
--- | :--
Tipo | Objeto
Noção | Um sistema web disponibilizado em forma de site onde são disponibilizados artigos científicos separados em congressos e edições, que podem ser consultados.
Impacto | <ul><li>É utilizado pelo usuário (leitor, administrador e editor) do sistema.</li></ul>

Nome | Citação
--- | :--
Tipo | Objeto
Noção | É uma mensão a algum autor ou artigo científico e está presente também em um artigo científico.
Impacto | <ul><li>É contabilizada pelo sistema;</li><li>É cadastrada pelo Editor.</li></ul>

Nome | Contabilizar citações
--- | :--
Tipo | Verbo
Noção | O sistema realiza a cada período de tempo uma contabilização geral de citações de todos os artigos científicos cadastrados. Essa contabilização se dá buscando no Google Scholar o número de citações do determinado artigo científico.
Impacto | <ul><li>Após armazenado esse valor pode ser consultado pelos usuários (leitores) do sistema.</li></ul>

Nome | Congresso
--- | :--
Tipo | Objeto
Noção | É um evento onde a comunidade científica se reúne para compartilhar conhecimento por meio de artigos científicos.
Impacto | <ul><li>É cadastrado pelo Administrador;</li><li>Edições são ligadas a ele.</li><li>Artigos científicos são ligados a ele.</li></ul>

Nome | Edição
--- | :--
Tipo | Objeto
Noção | É o nome dado a uma realização de um congresso.
Impacto | <ul><li>É cadastrado pelo Administrador;</li><li>Tem um editor ligado.</li><li>Artigos científicos são ligados a ele.</li></ul>

Nome | Editor
--- | :--
Tipo | Sujeito
Noção | Ator responsável pelos artigos científicos de uma edição de um congresso.
Impacto | <ul><li>Cadastrar um novo artigo no sistema;</li><li>Corrigir os dados de um artigo no sistema.</li></ul>

Nome | Número de acessos
--- | :--
Tipo | Objeto
Noção | Número de vezes em que o artigo foi acessado através do sistema.
Impacto | <ul><li>É atualizado pelo Sistema.</li><li>É visualizado pelo leitor.</li></ul>

Nome | Número de citações
--- | :--
Tipo | Objeto
Noção | Número de vezes em que o artigo foi citado.
Impacto | <ul><li>É contabilizado pelo Sistema.</li><li>É visualizado pelo leitor.</li></ul>

Nome | Palavra-chave
--- | :--
Tipo | Objeto
Noção | Palavra utilizada para qualificar o artigo científico.
Impacto | <ul><li>É cadastrada pelo Editor.</li><li>É utilizada como busca.</li></ul>

Nome | Resumo
--- | :--
Tipo | Objeto
Noção | É uma sinopse que introduz o tema e os conceitos abordados em um artigo científico.
Impacto | <ul><li>É cadastrado pelo Editor;</li><li>É utilizado como busca.</li></ul>

Nome | Leitor
--- | :--
Tipo | Sujeito
Noção | Ator responsável por acessar o site e realizar buscas.
Impacto | <ul><li>Buscar os artigos científicos por nome, autor, resumo, palavras-chave, congresso e edição;</li><li>Buscar os artigos mais citados;</li><li>Visualizar para cada artigo o número de citações e o número de acessos do mesmo.</li></ul>

## Regras por Tipo
Tipo    | Noção                         | Impacto
---|---|---
Sujeito | Quem é o sujeito              | Quais ações executa
Verbo   | Quem realiza, quando acontece e quais os procedimentos envolvidos | Quais os reflexos da ação no ambiente (outras ações que devem ocorrer) e quais os novos estados decorrentes
Objeto  | Definir o objeto e identificar outros objetos com os quais se relaciona | Ações que podem ser aplicadas ao objeto
Estado  | O que signifca e quais ações levaram a esse estado | Identificar outros estados e açõe que podem ocorrer a partir do estado que se descreve

## Template
Nome | Template 
--- | :--
Tipo | 
Noção | 
Impacto | 
