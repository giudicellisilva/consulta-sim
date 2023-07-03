require "test_helper"

class ConsultumTest < ActiveSupport::TestCase

  test 'Criando consulta' do
    consulta = Consultum.new
    assert_not consulta.save
  end

  test 'Salvando consulta' do
    paciente = Paciente.new nome:'Giudicelli Elias',
                            data:DateTime.now,
                            cpf:'53921086019',
                            email:'giudicelli@gmail.com'
    assert paciente.save

    medico = Medico.new nome: 'Dayane de Noronha',
                        cpf:'41879777088',
                        email:'dayane@gmail.com',
                        especialidade:'Clinico Geral',
                        CRM:'123857PE'
    assert medico.save

    consulta = Consultum.new data:DateTime.now,
                             horario:'2000-01-01 18:08:00',
                             paciente_id: paciente.id,
                             medico_id: medico.id
    assert consulta.save
  end
end
