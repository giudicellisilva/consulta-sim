require "test_helper"

class PacienteTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  test 'Salvando Paciente' do
    paciente = Paciente.new nome: 'Maria Leite',
                            data: DateTime.now,
                            cpf: '57613028020',
                            email: 'leite@gmail.com'
    assert paciente.save
  end

  test 'Salvando Paciente com cpf invalido' do
    paciente = Paciente.new nome: 'Joao Batista',
                            data: DateTime.now,
                            cpf: '115385734an',
                            email: 'batistaJoao@gmail.com'
    assert_not paciente.save
  end

  test 'Salvando paciente com endereco' do
    paciente = Paciente.new nome: 'Clarice Noronha',
                            data: DateTime.now,
                            cpf: '11538573407',
                            email: 'ClaNoronha@gmail.com'

    endereco = Endereco.new cep:'55294802',
                            cidade: 'Garanhuns',
                            bairro: 'Dom Helder Câmara',
                            logradouro: 'Rua Sebastiao Moura Filho',
                            complemento: 'Rua sem Saida'

    endereco.paciente = paciente.id
    assert paciente.save
  end

end
