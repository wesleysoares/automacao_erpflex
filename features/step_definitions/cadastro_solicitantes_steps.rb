Dado("que estou logado no sistema") do
    visit 'http://www.new.erpflex.com.br/'

    fill_in 'login', with: 'automacao.teste'

    sleep 10
end
  
Quando("faço o cadastro de solicitante com") do |table|
    visit 'http://www.new.erpflex.com.br/erp/cadastros/solicitante#'
end

Então("o cadastro deve ser salvo com sucesso") do

end
  