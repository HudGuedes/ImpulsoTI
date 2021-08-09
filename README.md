# Impulso TI

Primeiramente quero agradecer a oportunidade que me foi dado para realizar esse teste e demonstrar os meus conhecimentos. O projeto trata-se de um sistema para controle de almaxorifado.

# Tecnologias utilizadas;

- Ruby 2.7.3
- Rails 6.1.4

# Modo de utilizar o projeto;

Clone o repositório para a sua máquina, copie e cole: git clone https://github.com/HudGuedes/ImpulsoTI
Após isso, entre na pasta onde você clonou o projeto e digite os comandos:

- yarn install
- bundle install
- rails db:create
- rails db:migrate
- rails s

Acesse: http://localhost:3000/

Você caíra na parte de login, crie um usuário para conseguir entrar no sistema.

Na tela inicial é onde os produtos criados estarão exibidos. Crie os produtos clicando no botão Novo produto que está na parte superior á direita. Crie 11 produtos para que a paginação apareça. Você poderá realizar a pesquisa do produto na parte de Filtros, buscando pelo nome.

Criando os produtos os mesmos estarão com o Nome exibido e a quantidade do produto. Clicando no botão opções, você conseguirá editar apenas o nome, visualizar, dar entrada e retirada da quantidade que o produto tem. Se o produto acabou de ser criado, ele ainda poderá ser excluído, mas após uma alteração na quantidade, não poderá mais excluí-lo.

O usuário que realizar alguma alteração na quantidade, tanto retirada como entrada, seu log apareça na parte Visualizar, demonstrando o usuário, a ação, a quantidade e a data que ele realizou.

As retiradas ou entradas dos produtos só podem ser realizadas entre as 9h até as 18h de segunda à sexta, após isso não e possível, se caso tentar, aparecerá uma messagem de erro.

Enfim, esse é o projeto e sua forma de uso.

Qualquer dúvida estou à disposição. 

Muito obrigado e espero que tenham gostado!
