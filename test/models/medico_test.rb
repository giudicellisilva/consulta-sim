require "test_helper"

class MedicoTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  test 'Salvando medico' do
    medico = Medico.new nome: 'Guilherme Elias',
                        cpf:'15146076030',
                        email:'guilherme@gmail.com',
                        especialidade:'Especialista',
                        CRM:'123857AL'
    assert medico.save
  end

  test 'Criando cadastro de medico sem preencher dados' do
    medico = Medico.new
    assert_not medico.save
  end

  test 'Criando medico sem crm' do
    medico = Medico.new nome: 'Pedro Paes',
                        cpf:'15138276030',
                        email:'pedro@gmail.com',
                        especialidade:'Especialista',
                        CRM:''
    assert_not medico.save
  end

end
