
Before do |scenario|
  @Login = LoginPg.new
  @Login.load
  @Login.logar('mizuharamaico@gmail.com', 'Bionexo2018')
  expect(@Login.msgSucesso).to have_content("Autenticado com sucesso.")
end