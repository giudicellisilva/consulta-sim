When('Agora na pagina de cadastrar paciente eu preencho os campode de Nome {string} Data {string} Cpf {string} Email {string} Cidade {string} Logradouro {string} Complemento {string} Bairro {string} Cep {string}') do |string, string2, string3, string4, string5, string6, string7, string8, string9|
  fill_in 'paciente[nome]', :with => string
  fill_in 'paciente[data]', :with => string2
  fill_in 'paciente[cpf]', :with => string3
  fill_in 'paciente[email]', :with => string4
  fill_in 'paciente[endereco_attributes][cidade]', :with => string5
  fill_in 'paciente[endereco_attributes][logradouro]', :with => string6
  fill_in 'paciente[endereco_attributes][complemento]', :with => string7
  fill_in 'paciente[endereco_attributes][bairro]', :with => string8
  fill_in 'paciente[endereco_attributes][cep]', :with => string9

end

Then('agora estou vendo o paciente cadastrado') do
  expect(page).to have_current_path(pacientes_path + '/' + Paciente.last.id.to_s)
end

