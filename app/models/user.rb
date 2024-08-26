class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :friends
  validates :email, 
            uniqueness: { case_sensitive: false },
            presence: true,
            format: { with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i,   message: 'must be a valid email address' }  
  validates :encrypted_password, 
            presence: true,
            length: { minimum: 6 , maximum: 15}
end
