class User < ApplicationRecord
    #encrypt password
    has_secure_password

    #model associations
    has_many :favorites
    has_many :houses, through: :favorites

    #validations
    validates_presence_of :email
    validates_presence_of :password_digest
    validates_inclusion_of :admin, in: [true, false]


    def is_favorite?(id)
        result = false
        p id
        favorites.each do |fav| 
            result = true if fav.house_id == id.to_i
        end
        result
    end
end
