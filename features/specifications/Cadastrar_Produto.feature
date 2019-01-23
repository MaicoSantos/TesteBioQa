# language: pt 
@Produto
Funcionalidade: Cadastro de Produtos Hospitalares para controle de estoque e futuras compras

@CadastrarProduto_CamposObrigatorios
Esquema do Cenario: Validação de Campo Obrigatório

Dado que o usuario acesse a tela de cadastro de Produto
Quando não preencher os campos "<Nome>","<Codigo>","<Fabricante>","<Descricao>","<Preco>","<Tipo>","<Status>"
E confirmar
Então o sistema apresenta mensagem de campo obrigatorio

Exemplos:
    | Nome      | Codigo      | Fabricante    | Descricao    | Preco | Tipo             | Status  |
    |           | RANDOM_COD  | Fabricante 01 | Descricao 01 | 10    | Medicamento      | Ativo   |
    | Produto02 |             | Fabricante 02 | Descricao 02 | 20    | Materias Médicos | Inativo |
    | Produto03 | RANDOM_COD  |               | Descricao 03 | 30    | Materias Médicos | Ativo   |
    | Produto04 | RANDOM_COD  | Fabricante 04 |              | 40    | Medicamento      | Inativo |
    | Produto05 | RANDOM_COD  | Fabricante 05 | Descricao 05 |       | Medicamento      | Ativo   |
    | Produto06 | RANDOM_COD  | Fabricante 06 | Descricao 06 |       | Teste            | Ativo   |

@CadastrarProduto
Cenario: Cadastrar Produto

Dado que o usuario acesse a tela de cadastro de Produto
Quando Preencher todos os campos e confirmar
| nome       | Medicamento 01   |
| codigo     | RANDOM_COD       |
| fabricante | Fabricante Teste |
| descricao  | Descricao Teste  |
| preco      | 0,99             |
| tipo       | Medicamento      |
| status     | Ativo            |
Então o Produto deverá ser cadastrado com sucesso