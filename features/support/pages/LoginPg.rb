class LoginPg < SitePrism::Page

    set_url 'http://qainterview.qa.cloud.bionexo.com.br/'
    element :campo_login, '#user_email'
    element :campo_senha, '#user_password'
    element :sucesso, '#flash_notice'
    

    def logar(usuario, senha)
        campo_login.set usuario
        campo_senha.set senha
        click_on('Entrar')
    end

    def msgSucesso
        sucesso.text
    end

end