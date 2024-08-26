class Friend < ApplicationRecord
    belongs_to :user

    validates :first_name , presence: true ,  length: { minimum: 3, maximum: 15}
    validates :last_name , presence: true , length: { minimum: 3, maximum: 15}
    validates :email, 
               uniqueness: { case_sensitive: false },
               presence: true,
               format: { with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i,   message: 'must be a valid email address' }    
    validates :phone,
               presence: true,
               length: {minimum: 10, maximum: 10},
               numericality: { only_integer: true }
    validates :twitter , presence: true , uniqueness: { case_sensitive: false }, length: { minimum: 3, maximum: 15}
end
