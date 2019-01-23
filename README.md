# Teste Bio QA

Repositório para entrega do teste da Bio


Gems usadas no projeto:
gem 'cucumber'
gem 'rspec'
gem 'rake'
gem 'page-object', '~> 2.0'
gem 'data_magic'
gem 'site_prism', '2.12'
gem 'capybara', '2.18.0'
gem 'selenium-webdriver'
gem 'faker'

### NAVEGAÇÃO DO CMD 
- `cd <nomedapasta>` - para entrar na pasta

### EXECUTAR O PROJETO
Na pasta do projeto executar:
- `cucumber cucumber --t @Produto` (Para executar o projeto inteiro)
- `cucumber cucumber --t @CadastrarProduto_CamposObrigatorios` (Para executar o Teste de Campo Obrigario. Obs: estes estão falhando devido bugs existentes na aplicação)
- `cucumber cucumber --t @CadastrarProduto` (Para executar o Teste de cadastrar 1 produto)
- `cucumber cucumber --t @EditarProduto` (Para executar o Teste de Editar 1 produto e ao final valida o cabeçalho da lista de produtos e se a lista possui ao menos 10 registros.)