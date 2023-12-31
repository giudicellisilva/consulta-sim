class Medico < ApplicationRecord
  has_many :consultums, dependent: :destroy
  has_many :pacientes, through: :consultums

  validates :nome, presence: {message: 'Nome é obrigatório'},
            length: {maximum: 100, message:'maximo 100 caracteres'}

  validates :cpf, presence: {message: 'CPF obrigatório'},
            length: {is: 11, message: 'CPF precisa conter 11 dígitos'},
            format: {with: /\A\d+\z/, message: 'Deve ter apenas números'}

  validates :email, format: {with: URI:: MailTo::EMAIL_REGEXP}


  validates :CRM, presence: {message: 'CRM obrigatório'}



end
