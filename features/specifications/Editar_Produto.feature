# language: pt 
@Produto
Funcionalidade: Edição de Produtos Hospitalares para controle de estoque e futuras compras

@EditarProduto
Esquema do Cenario: Alterar Produto

Dado que o usuario acesse a tela de Listagem de Produto
Quando Selecionar um produto para editar
E Alterar todos os campos "<Nome>","<Codigo>","<Fabricante>","<Descricao>","<Preco>","<Tipo>","<Status>" e confirmar
Então o sistema deverá alterar as informações do produto com sucesso

Exemplos:
    | Nome             | Codigo      | Fabricante          | Descricao         | Preco | Tipo             | Status  |
    | Produto Alterado | RANDOM_COD  | Fabricante Alterado | Descricao Editada | 70    | Materias Médicos | Inativo |
