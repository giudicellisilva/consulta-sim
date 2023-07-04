Given('Estou na pagina inicial') do
  visit "/"
end

Given('Clico em {string}') do |string|
  click_on string
end

When('O medico de Nome {string} Crm {string} exite') do |string, string2|
  visit "/medicos/new"
  fill_in 'medico[nome]', :with => string
  fill_in 'medico[cpf]', :with => "89629268060"
  fill_in 'medico[email]', :with => "medico@gmail.com"
  fill_in 'medico[especialidade]', :with => "Não sei"
  fill_in 'medico[CRM]', :with => string2
  click_button 'Create Medico'
  expect(page).to have_content(string2)

end

When('Clico no button {string} do medico com Crm {string}') do |string, string2|
  expect(page).to have_content(string2)
  click_button string
end

Then('Vejo {string}') do |string|
  expect(page).to have_content(string)
end

When('Agora na pagina de medicos não encontro medico de Crm {string}') do |string|
  expect(page).to have_no_content(string)
end

Then('Continuo na pagina de medicos') do
  expect(page).to have_current_path('/medicos')
end


