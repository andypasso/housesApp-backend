class House < ApplicationRecord
 # model association
 has_many :favorites
 has_many :users, through: :favorites

 # validations
 validates_presence_of :title, :description
end
