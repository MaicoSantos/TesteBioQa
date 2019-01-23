Dado("que o usuario acesse a tela de cadastro de Produto") do
    @Produto = ProdutoPg.new
    @Produto.novo_Produto
  end

  Quando("não preencher os campos {string},{string},{string},{string},{string},{string},{string}") do |nome, codigo, fabricante, descricao, preco, tipo, status|
        
    if codigo == 'RANDOM_COD'
       codigo = "Cod#{Faker::Number.number}"
    end
        codigo
    @Produto.preencheProduto(nome, codigo, fabricante, descricao, preco, tipo, status)
  end
  
  Quando("confirmar") do
    @Produto.confirmar
  end
  
  Então("o sistema apresenta mensagem de campo obrigatorio") do
    @Produto.wait_until_msgErro_CampoObrigatorio_visible 3
    expect(@Produto.msgErro_CampoObrigatorio).to have_content("é um campo obrigatório")
  end


  Quando("Preencher todos os campos e confirmar") do |table|
        table.map_column!('codigo') do |codigo|
            if codigo == 'RANDOM_COD'
                codigo = "Cod#{Faker::Number.number}"
            end
            codigo
        end
    @preencher = table.rows_hash
        @Produto.preencheMedicamento(@preencher)
        @Produto.confirmar
  end
  
  Então("o Produto deverá ser cadastrado com sucesso") do
    expect(@Produto.sucesso).to have_content("Produto criado com sucesso.")
  end

  Dado("que o usuario acesse a tela de Listagem de Produto") do
    @Produto = ProdutoPg.new
    @Produto.lista_Produtos
  end
  
  Quando("Selecionar um produto para editar") do
    @Produto.primeiroItemDaLista
  end
  
  Quando("Alterar todos os campos {string},{string},{string},{string},{string},{string},{string} e confirmar") do |nome, codigo, fabricante, descricao, preco, tipo, status|
    if codigo == 'RANDOM_COD'
        codigo = "Cod#{Faker::Number.number}"
    end
    codigo
    
    @Produto.preencheProduto(nome, codigo, fabricante, descricao, preco, tipo, status)
    expect(page).to have_link('Voltar')
    @Produto.btnAlterarProduto
  end
  
  Então("o sistema deverá alterar as informações do produto com sucesso") do
    expect(@Produto.sucesso).to have_content("Produto atualizado com sucesso.")

    expect(@Produto.cabecalho).to have_content("Nome")
    expect(@Produto.cabecalho).to have_content("Fabricante")
    expect(@Produto.cabecalho).to have_content("Tipo")
    expect(@Produto.cabecalho).to have_content("Status")

    expect(page).to have_selector('tr', :maximum => 11)
  end
  