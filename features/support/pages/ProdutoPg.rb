class ProdutoPg < SitePrism::Page
    
    element :menuProduto, 'span', text:"Produto"
    element :campo_nome, '#product_name'
    element :campo_codigo, '#product_code'
    element :campo_fabricante, '#product_manufacturer'
    element :campo_descricao, '#product_description'
    element :campo_preco, '#product_price'
    element :campo_tipo, '#product_kind'
    element :campo_status, '#product_status'
    element :btnCreate, 'input[value*="Create Product"]'
    element :msgErro_CampoObrigatorio, '#new_product > div.alert.alert-danger'
    element :sucesso, '#flash_notice'
    element :primeiroProduto, 'table > tbody > tr:nth-child(2)'
    element :cabecalho, 'table > tbody > tr:nth-child(1)'
    

    def novo_Produto
        menuProduto.click
        click_on('Novo Produto')
    end

    def preencheProduto(nome, codigo, fabricante, descricao, preco, tipo, status)
        campo_nome.set(nome)
        campo_codigo.set(codigo)
        campo_fabricante.set(fabricante)
        campo_descricao.set(descricao)
        campo_preco.set(preco)
        campo_tipo.select(tipo)
        campo_status.select(status)
    end

    def preencheMedicamento(preencher)
        campo_nome.set preencher[:nome]
        campo_codigo.set preencher[:codigo]
        campo_fabricante.set preencher[:fabricante]
        campo_descricao.set preencher[:descricao]
        campo_preco.set preencher[:preco]
        campo_tipo.select preencher[:tipo]
        campo_status.select preencher[:status]
    end

    def confirmar
        btnCreate.click
    end

    def lista_Produtos
        menuProduto.click
        click_on('Listar Produtos')
    end

    def primeiroItemDaLista
        primeiroProduto.click
    end

    def btnAlterarProduto
        click_on('Update Product')
    end
end