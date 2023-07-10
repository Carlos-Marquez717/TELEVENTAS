class Cliente < ApplicationRecord
    has_many :llamados

    validates :numero_telefonico, presence: true
    validates :nombre, presence: true
    validates :email, presence: true, format: { with: URI::MailTo::EMAIL_REGEXP }
  end
  