<h1 align="center">
Fake Store API<br>
</h1>

# 🚀 Introdução

<p align="justify">
  Projeto realizado com a finalidade de estudar o Robot Framework, compreender os tipos de request e como utilizar, praticar cenários de teste e autenticação na API, criação de massa de dados dinâmica (Faker Library) e estática (JSON) e como consumí-las, utilização do padrão Service-Object para organização dos arquivos e desenvolvimento de funções Python que facilitam a automação dos testes.
  A seguir, estão dispostos os tópicos presentes nesse documento:
</p>

1. [Sobre a API Fake Store](#fakestore)
2. [Instalação das ferramentas](#instalacao)
3. [Como baixar o repositório](#baixar_repo)
4. [Como acessar o repositório no Visual Studio Code](#repo_vscode)
5. [Organização do projeto](#organizacao)
6. [Acessando os testes do projeto](#acessar_testes)
7. [Relatório dos resultados obtidos](#resultados)
9. [Observações e pontos de melhoria](#observacoes)
8. [Ferramentas utilizadas](#ferramentas)

<div id='fakestore' />

# 🛒 Sobre a API Fake Store

<p align="justify">
  A Fake Shop é uma API que simula um e-commerce, apresentando quatro recursos (endpoints) para realizar o fluxo de compra: products (produtos), cart (carrinho), user (usuário) e login.
</p>

## 🗺️ Mapa mental da API

<p align="justify">
  O mapa mental abaixo representa todas as rotas da Fake Shop API de acordo com a <a href="https://fakestoreapi.com/docs">documentação oficial</a>. A organização do mapa é representada da seguinte forma: o lado direito representa fluxo prioritário e o lado esquerdo o fluxo não prioritário.
<br>
</p>

* **Fluxo prioritário**: são as rotas essenciais a serem testadas (/login, /user e /products);
* **Fluxo não prioritário**: são rotas que podem ser testadas posteriormente (/cart).<br><br>

<div id='instalacao' />

# ⚙️ Instalação das ferramentas

<p align="justify">
  Neste tópico são descritas todas as ferramentas necessárias para acessar o projeto em seu computador. Entretanto, os passos informados são referentes ao sistema operacional Windows na versão de 64 bits.
</p>

`IMPORTANTE: siga todos os passos a seguir para garantir o funcionamento correto do projeto!`

1. [Instalação do **Python**](#python)
2. [Instalação do **Node.JS**](#node)
3. [Instalação do **Robot Framework**](#robot)
4. [Instalação do **Visual Studio Code**](#vscode)

<div id='python' />

## 🐍 Instalação do Python

<p align="justify">
  O Python é a linguagem de programação utilizada nesse projeto para interação com o Robot Framework. No entanto, será necessária a instalação da versão **3.8.2** da linguagem para evitar falhas de inconsistência.<br>
 Os passos da instalação estão descritos a seguir:
</p>

1. <a href="https://www.python.org/downloads/release/python-382/">Clique aqui</a> para acessar a página de _Downloads_ na versão correta;
2. Ao final da página na sessão _Files_, selecione a opção **Windows x86-64 executable installer**, baixe o arquivo e execute-o;

<div align="center">
<br><img src="https://github.com/abressam/RoboTron_Amanda_Bressam_ProjetoFinal/blob/develop/assets/python_version.png" width=600><br><br>
</div>

3. Na tela inicial de instalação do Python, selecione a opção **Add Python 3.8 to PATH** e clique em _Install Now_;

`IMPORTANTE: não esqueça de selecionar a opção do PATH, caso contrário haverá problemas para acessar o Python!`

<div align="center">
<img src="https://github.com/abressam/RoboTron_Amanda_Bressam_ProjetoFinal/blob/develop/assets/python382.png" width=400><br><br>
</div>

4. Continue seguindo adiante até finalizar todos os passos da instalação.
5. Para conferir se foi instalado corretamente, na barra de pesquisa do Windows digite **cmd**, abra o Prompt de Comando e digite **python**.

<div align="center">
<br><img src="https://github.com/abressam/RoboTron_Amanda_Bressam_ProjetoFinal/blob/develop/assets/prompt_python.png">
</div>

6. Agora o Python está instalado na sua máquina!

<div id='node' />

## 🟢 Instalação do Node.JS

<p align="justify">
  O Node.JS será utilizado para auxiliar uma das bibliotecas que será utilizada no Robot Framework.<br>
 Os passos da instalação estão descritos a seguir:
</p>

1. <a href="https://nodejs.org/en/">Clique aqui</a> para acessar a página oficial do Node.JS;
2. Instale a versão que possui o nome **LTS** e execute o arquivo;
3. Conclua todos os passos da instalação;
4. Agora o Node.JS está instalado!

<div id='robot' />

## 🤖 Instalação do Robot Framework

<p align="justify">
  O Robot Framework é um exemplo de ferramenta de automação de testes desenvolvido em Python que apresenta uma sintaxe simples e de fácil leitura, podendo ser utilizado em diferentes tecnologias e interfaces.<br>
 Os passos da instalação estão descritos a seguir:
</p>

1. Abra a barra de pesquisas do Windows e digite **cmd** para abrir o Prompt de Comando;
2. Informe no terminal o seguinte comando, obtido no <a href="https://robotframework.org/?tab=1#getting-started">site oficial do Robot</a>:

```
pip install robotframework
```

3. Para confirmar a instalação, informe no terminal o seguinte comando:

```
robot --version
```

<div align="center">
<img src="https://github.com/abressam/RoboTron_Amanda_Bressam_ProjetoFinal/blob/develop/assets/robot.png"><br><br>
</div>

4. A seguir, instalaremos a primeira dependência utilizada no projeto, a <a href="https://robotframework-browser.org/#installation">Browser Library</a>, utilizando o seguinte comando no terminal:

```
pip install robotframework-browser
```

5. A segunda dependência a ser instalada é a  <a href="https://marketsquare.github.io/robotframework-requests/">Request Library</a> que será utilizada para fazer as requisições HTTPS, utilizando o comando a seguir:

```
pip install robotframework-requests
```

6. A terceira e última dependência a ser instalada é a  <a href="https://pypi.org/project/robotframework-faker/">Faker Library</a> que será utilizada para simular dados, utilizando o comando a seguir:

```
pip install robotframework-faker
```

7. Agora está tudo pronto e configurado!

<div id='vscode' />

## 🔨 Instalação do Visual Studio Code

<p align="justify">
  O Visual Studio Code é a IDE (Integrated Development Environment) utilizada para o desenvolvimento do projeto e será necessária para acessá-lo.<br>
 Os passos da instalação estão descritos a seguir:
</p>

1. <a href="https://code.visualstudio.com/">Clique aqui</a> para acessar a página oficial do Visual Studio Code;
2. Selecione a opção **Download for Windows**, baixe o arquivo e execute-o;
3. Conclua todos os passos da instalação;
4. Agora o VSCode está instalado!

### 💡 Dicas de extensões para o Visual Studio Code
<p align="justify">
  A seguir será informado sugestões de extensões para instalar na IDE que facilitaram no momento de visualizar os arquivos do projeto.
</p>

1. Abra o Visual Studio Code e selecione a opção _Extensions_ pelo atalho _Ctrl+Shift+X_ ou clicando no ícone a seguir:

<div align="center">
 <img src="https://github.com/abressam/RoboTron_Amanda_Bressam_Compass/blob/main/assets_readme/button_extensions.png" width=600><br><br>
</div>

2. Na barra de pesquisa, informe cada uma das seguintes opções e clique em _install_.

<div align="center">
  
| Extensão | Ícone |
| ---------- | ------ |
| Hyper Term Theme | <img src="https://github.com/abressam/RoboTron_Amanda_Bressam_ProjetoFinal/blob/develop/assets/extension_1.png" width=50> |
| Material Icon Color | <img src="https://github.com/abressam/RoboTron_Amanda_Bressam_ProjetoFinal/blob/develop/assets/extension_2.png" width=50> |
| Rainbow Brackets | <img src="https://github.com/abressam/RoboTron_Amanda_Bressam_ProjetoFinal/blob/develop/assets/extension_3.png" width=50> |

</div>

3. Agora as extensões foram instaladas no VSCode!

<div id='baixar_repo' />

# 🔽 Como baixar o repositório

<p align="justify">
Existem duas maneiras de possuir este projeto em seu computador, escolha abaixo qual preferir!
</p>

* [Baixando o projeto através do **GIT**](#git)
* [Baixando o projeto por **pasta compactada**](#compactada)

<div id="git" />

## ✅ Baixando o projeto através do GIT

<p align="justify">
Através da ferramenta de versionamento de código GIT é possível clonar esse repositório em seu computador. Para isso, siga os seguintes passos:
</p>

1. <a href="https://git-scm.com/">Clique aqui</a> para acessar a página oficial do GIT;
2. Selecione a opção _Download for Windows_, baixe o arquivo e execute-o;
3. Siga todos os passos até finalizar a instalação;
4. Após instalado, crie uma pasta vazia na Área de Trabalho (ou no diretório que preferir);
5. Abra a pasta e com o botão direito do mouse selecione a opção **Git Bash Here**;
6. Informe dentro do terminal o comando abaixo (_git clone_ seguido da _URL do repositório_). A URL também pode ser obtida acessando o repositório e clicando no botão verde escrito _Code_;

```
git clone https://github.com/abressam/RoboTron_Amanda_Bressam_ProjetoFinal.git
```

<div align="center">
<img src="https://github.com/abressam/RoboTron_Amanda_Bressam_Compass/blob/develop/assets_readme/git_clone.png" width=350>
</div>

7. Agora o projeto está no seu computador!

<div id="compactada" />

## 📁 Baixando o projeto por pasta compactada

<p align="justify">
Siga os passos abaixo para baixar o projeto:
</p>

1. Clique no botão verde escrito _Code_ e selecione a opção **Download ZIP**;

<div align="center">
<img src="https://github.com/abressam/RoboTron_Amanda_Bressam_Compass/blob/develop/assets_readme/zip_repo.png" width=350>
</div>

2. Após o arquivo ser baixado, clique com o botão direito e selecione a opção para descompactar a pasta;
3. Agora o projeto está no seu computador!

<div id='repo_vscode' />

# 🛠️ Como acessar o repositório no Visual Studio Code

<p align="justify">
Após a instalação das ferramentas e o download do projeto, poderemos acessá-lo através do VS Code! Siga os passos abaixo:
</p>

1. Abra o _Visual Studio Code_, clique na opção _File_ do menu de ferramentas e em seguida _Open folder..._ ou acesse pelo atalho (_Ctrl O + Ctrl K_);
2. Selecione a pasta do repositório no seu computador e clique para abrir, após carregado ficará da seguinte forma:

<div align="center">
<img src="https://github.com/abressam/Fake_Store_Api/blob/develop/assets/diretorio_raiz.png"><br><br>
</div>

3. Para visualizar os arquivos presente nesse diretório, clique na flecha localizada ao lado de cada pasta;

<div align="center">
<img src="https://github.com/abressam/Fake_Store_Api/blob/develop/assets/diretorio_raiz_open.png"><br><br>
</div>

4. Agora o projeto está aberto no VSCode!

<div id='organizacao' />

# 📁 Organização do projeto

<p align="justify">
  Adicionar texto.
</p>

<div id='acessar_testes' />

# 🗄️ Acessando os testes do projeto

<p align="justify">
Como visto anteriormente, os testes estão separados por endpoints e discribuídos em dois arquivo: cenários positivos e cenários negativos. Segue abaixo a explicação de como rodar todos os testes de um arquivo ou rodar apenas um teste específico.
</p>

## 1️⃣ Acessando todos os testes de um arquivo

<p align="justify">
Com o projeto aberto no Visual Studio Code, acesse o terminal utilizando o atalho Ctrl + ' e siga os passos abaixo para executar o arquivo desejado, separados respectivamente em cenários válidos (valid) e inválidos (invalid) de cada endpoint:
</p>

* Executando os testes do endpoint **/login**

```
robot -d  ./fake_shop/reports ./fake_shop/tests/login/valid_login_test.robot
```

```
robot -d  ./fake_shop/reports ./fake_shop/tests/login/invalid_login_test.robot
```

* Executando os testes do endpoint **/products**

```
robot -d  ./fake_shop/reports ./fake_shop/tests/product/valid_product_test.robot
```

```
robot -d  ./fake_shop/reports ./fake_shop/tests/product/invalid_product_test.robot
```

* Executando os testes do endpoint **/carts**

```
robot -d  ./fake_shop/reports ./fake_shop/tests/cart/valid_cart_test.robot
```

```
robot -d  ./fake_shop/reports ./fake_shop/tests/cart/invalid_cart_test.robot
```

* Executando os testes do endpoint **/user**

```
robot -d  ./fake_shop/reports ./fake_shop/tests/user/valid_user_test.robot
```

```
robot -d  ./fake_shop/reports ./fake_shop/tests/user/invalid_user_test.robot
```

## 2️⃣ Acessando testes individualmente

<p align="justify">
Para executar um teste específico é necessário acessar a tag referente ao teste desejado, para isso, abra o arquivo de teste e localize em cada cenário o argumento [tags]. Veja um exemplo abaixo:
</p>

<div align="center">
ADICIONAR IMAGEM
</div>

<p align="justify">
Cada cenário de teste está numerado em sequência, sempre iniciando em 1. Assim, o processo de executar o teste é semelhante a etapa anterior, porém é necessário adicionar o comando (-i nome_da_tag) entre a localização do diretório reports e do diretório do arquivo de teste. Veja um exemplo abaixo de como acessar apenas o primeiro teste, referente ao cenário de testes positivos do endpoint /user:
</p>

```
robot -d  ./fake_shop/reports -i 1 ./fake_shop/tests/user/valid_user_test.robot
```

<div id='resultados' />

# 📝 Relatório dos resultados obtidos

<p align="justify">
Nesta sessão está a comparação dos resultados obtidos nos testes em relação a documentação oficial da Fake Store API. Entretanto, a documentação não apresenta com clareza, na grande maioria dos casos, uma resposta quando o usuário adiciona informações incorretas ou o status code esperado. Além disso, muitos casos onde deveriam ocorrer falhas, retonam com status code 200 e body vazio. <br>
A seguir, os casos de teste estão separados em seus respectivos endpoints e em cenários positivos e negativos:
</p>

1. [Resultados do endpoint **/login**](#login)
2. [Resultados do endpoint **/products**](#products)
3. [Resultados do endpoint **/cart**](#cart)
4. [Resultados do endpoint **/user**](#user)

* Número total de testes: 140
* Número de testes do **endpoint /login**: 8
* Número de testes do **endpoint /products**: 53
* Número de testes do **endpoint /cart**: 52
* Número de testes do **endpoint /user**: 27

<div id='login' />

## 📜 Resultados do endpoint /login

### ✔️ Cenários de teste **positivo**

<div align="center">
 
| Cenário de Teste | Objetivo | Resultado Esperado | Resultado Obtido | Status |  Observações |
| ------ | ------ | ------ | ------ | :------: |  :------: |
| Test Case 1: POST Login User | Validar o login de um usuário estático |  {"token": "..."} | status code: 200 <br> Response: {"token": "eyJhbGciOiJIUzI1NiI..."} | PASS |  Teste ocorreu como esperado |
<br>
</div>

### ❌ Cenários de teste **negativo**

<div align="center">

| Cenário de Teste | Objetivo | Resultado Esperado | Resultado Obtido | Status |  Observações |
| ------ | ------ | ------ | ------ | :------: | :------: |
| Test Case 1: POST Login With Non-existent User | Validar o login com usuário que não existe | não documentado | status code: 401 <br> Response: username or password is incorrect | PASS | Apesar de não estar documentado, era suposto retornar uma mensagem de erro |
| Test Case 2: POST Login User Without Username | Validar o login de um usuário sem username | não documentado | status code: 524 <br> Response: código HTML | PASS | Não era esperado ocorrer falha no servidor, o teste deveria falhar |
| Test Case 3: POST Login With Without Password | Validar o login de um usuário sem password | não documentado | status code: 524 <br> Response: código HTML | PASS | Não era esperado ocorrer falha no servidor, o teste deveria falhar |
| Test Case 4: POST Login User With Blank Spaces Username | Validar o login com username preenchido com espaços em branco | não documentado | status code: 401 <br> Response: username or password is incorrect | PASS | Apesar de não estar documentado, era suposto retornar uma mensagem de erro |
| Test Case 5: POST Login User With Blank Spaces Password | Validar o login com password preenchido com espaços em branco | não documentado | status code: 401 <br> Response: username or password is incorrect | PASS | Apesar de não estar documentado, era suposto retornar uma mensagem de erro |
| Test Case 6: POST Login User Wrong Username | Validar o login com username incorreto | não documentado | status code: 401 <br> Response: username or password is incorrect | PASS | Apesar de não estar documentado, era suposto retornar uma mensagem de erro |
| Test Case 7: POST Login With Wrong Password | Validar o login com password incorreto | não documentado | status code: 401 <br> Response: username or password is incorrect | PASS | Apesar de não estar documentado, era suposto retornar uma mensagem de erro |

<br>
</div>

<div id='products' />

## 📜 Resultados do endpoint /products

### ✔️ Cenários de teste **positivo**

<div align="center">
 
| Cenário de Teste | Objetivo | Resultado Esperado | Resultado Obtido | Status |  Observações |
| ------ | ------ | ------ | ------ | :------: |  :------: |
| Test Case 1: GET List All Products |  Listar todos os produtos | Response: [{<br>id: ...<br>title: "..."<br>price: "..."<br>category: "..."<br>description: "..."<br>image: "..."<br>}] | status code: 200 <br> Response: [{<br>id: ...<br>title: "..."<br>price: "..."<br>category: "..."<br>description: "..."<br>image: "..."<br>}] | PASS |  Teste ocorreu como esperado |
| Test Case 2: GET Product By ID |  Listar um produto específico | Response: [{<br>id: 1<br>title: "..."<br>price: "..."<br>category: "..."<br>description: "..."<br>image: "..."<br>}] | status code: 200 <br> Response: [{<br>id: 1<br>title: "..."<br>price: "..."<br>category: "..."<br>description: "..."<br>image: "..."<br>}] | PASS |  Teste ocorreu como esperado |
| Test Case 3: GET Limit Of Products |  Listar um intervalo de produtos (ex: 1 a 5) | Response: [{<br>id: 1<br>title: "..."<br>price: "..."<br>category: "..."<br>description: "..."<br>image: "..."<br>}<br>...<br>{<br>id: 5<br>title: "..."<br>price: "..."<br>category: "..."<br>description: "..."<br>image: "..."<br>}] | status code: 200 <br> Response: [{<br>id: 1<br>title: "..."<br>price: "..."<br>category: "..."<br>description: "..."<br>image: "..."<br>}<br>...<br>{<br>id: 5<br>title: "..."<br>price: "..."<br>category: "..."<br>description: "..."<br>image: "..."<br>}] | PASS |  Teste ocorreu como esperado |
| Test Case 4: GET Products In Descending Order |  Listar todos os produtos em ordem decrescente | Response: [{<br>id: 20<br>title: "..."<br>price: "..."<br>category: "..."<br>description: "..."<br>image: "..."<br>}<br>...<br>{<br>id: 1<br>title: "..."<br>price: "..."<br>category: "..."<br>description: "..."<br>image: "..."<br>}] | status code: 200 <br> Response: [{<br>id: 20<br>title: "..."<br>price: "..."<br>category: "..."<br>description: "..."<br>image: "..."<br>}<br>...<br>{<br>id: 1<br>title: "..."<br>price: "..."<br>category: "..."<br>description: "..."<br>image: "..."<br>}] | PASS |  Teste ocorreu como esperado |
| Test Case 5: GET Products In Ascending Order |  Listar todos os produtos em ordem crescente | Response: [{<br>id: 1<br>title: "..."<br>price: "..."<br>category: "..."<br>description: "..."<br>image: "..."<br>}<br>...<br>{<br>id: 20<br>title: "..."<br>price: "..."<br>category: "..."<br>description: "..."<br>image: "..."<br>}] | status code: 200 <br> Response: [{<br>id: 1<br>title: "..."<br>price: "..."<br>category: "..."<br>description: "..."<br>image: "..."<br>}<br>...<br>{<br>id: 20<br>title: "..."<br>price: "..."<br>category: "..."<br>description: "..."<br>image: "..."<br>}] | PASS |  Teste ocorreu como esperado |
| Test Case 6: GET List Products Category |  Listar as categorias de produto | Response: ["electronics","jewelery","men's clothing","women's clothing"] | status code: 200 <br> Response: ["electronics","jewelery","men's clothing","women's clothing"] | PASS |  Teste ocorreu como esperado |
<br>
</div>

<div id='observacoes' />

# 👍 Observações e pontos de melhoria

<p align="justify">
  A Fake Store API não apresenta com clareza na documentação o resultado de saída de cada endpoint e está incompleta em vários aspectos. A seguir estão dispostas sugestões de como melhorar a API e sua documentação.
</p>

* Revisar os possíveis cenários negativos, apresentado no tópico anterior, para criar novos recursos e tornam a API mais robusta em cenários de falha;
* Adicionar o status code de cada rota;
* Adicionar mensagens de sucesso (ex: "Login realizado com sucesso", "Cadastro realizado com sucesso", etc);
* Adicionar mensagens de falha (ex: "E-mail já cadastrado", "Usuário não encontrado", "Produto não encontrado", "[Campo] não pode ser vazio", etc);
* Arrumar endpoint "Get carts in date range", pois exige o id dos carts para executar a ação sendo que deveria retornar-los como response;
* Tornar o token gerado no login relevante para as ações no endpoint cart e products;
* Diferenciar os usuários clientes (não podem modificar os produtos) dos usuários administradores (possuem permissão para adicionar, alterar e deletar produtos)

<div id='ferramentas' />

# 🔧 Ferramentas utilizadas

<p align="justify">
As ferramentas utilizadas no projeto estão descritas a seguir:
</p>

<div align="center">
  
| Ferramenta | Versão | Observações |
| ---------- | ------ | ----------- |
| Python | 3.8.2 | Linguagem de programação utilizada nos exercícios |
| VS Code | 1.72.1 | IDE usada para rodar o projeto |
| Git | 2.38.1 | Software de versionamento de código |
| GitHub | ------ | Plataforma online para alocar repositórios |
| Robot Framework | 5.0.1 | Ferramenta de automação de testes |
| Request Library | 0.9.3 | Biblioteca para testes de API usando Robot |
| Browser Library | 14.1.0 | Biblioteca que disponibiliza recursos do Browser para o Robot |
| Faker Library | 5.0.0 | Biblioteca com recursos para gerar massa de dados fictícia no Robot |
| Node.JS | 16.18.0 LTS | Ambiente de execução JavaScript que auxilia a Browser Library |
<br>
</div>
