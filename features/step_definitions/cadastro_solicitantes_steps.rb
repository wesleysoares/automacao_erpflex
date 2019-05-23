require 'faker'

Dado("que estou logado no sistema") do
    page.driver.browser.manage.window.maximize
    
    visit '/'

    fill_in 'login', with: 'automacao.teste'
    fill_in 'senha', with: '1234'

    click_button 'LoginSubmit'

    sleep 3
end
  
Quando("faço o cadastro de solicitante") do
    visit '/erp/cadastros/solicitante#'
    
    sleep 3

    click_button 'Incluir'

    fill_in 'SLCSOL_Desc', with: @nome = Faker::Name.name
    fill_in 'SLCSOL_Email', with: @email = Faker::Internet.email
    fill_in 'SLCSOL_Departamento', with: Faker::Job.field
    fill_in 'SLCSOL_Obs', with: Faker::Job.title

    click_button 'mtd-save'

    sleep 3
end

Então("o cadastro deve ser salvo com sucesso") do
    fill_in 'searchGrid', with: @nome
    find('span', class: 'lupaGridSearch').click

    sleep 3

    expect(page).to have_content @email
end
  