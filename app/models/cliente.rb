class Cliente < ApplicationRecord
  has_many :dividas
  has_many :empresas, :through => :dividas
end
