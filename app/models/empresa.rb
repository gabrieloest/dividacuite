class Empresa < ApplicationRecord
  has_many :dividas
  has_many :clientes, :through => :dividas
end
