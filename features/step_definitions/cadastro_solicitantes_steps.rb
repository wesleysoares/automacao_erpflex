Dado("que estou logado no sistema") do
    visit 'http://www.new.erpflex.com.br/'

    fill_in 'login', with: 'automacao.teste'
    fill_in 'senha', with: '1234'

    click_button 'LoginSubmit'
end
  
Quando("faço o cadastro de solicitante com") do |table|
    visit 'http://www.new.erpflex.com.br/erp/cadastros/solicitante#'

    click_button 'Incluir'

    @solicitante = table.rows_hash

    fill_in 'SLCSOL_Desc', with: @solicitante[:nome]
    fill_in 'SLCSOL_Email', with: @solicitante[:email]
    fill_in 'SLCSOL_Departamento', with: @solicitante[:departamento]
    fill_in 'SLCSOL_Obs', with: @solicitante[:observações]

    click_button 'mtd-save'
end

Então("o cadastro deve ser salvo com sucesso") do
    expect(page).to have_content @solicitante[:nome]
end
  