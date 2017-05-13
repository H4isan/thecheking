class Client < ApplicationRecord
  has_many :indetifications
  has_many :money
end
