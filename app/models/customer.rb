class Customer < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  
  validates_presence_of :name, :phone, :email
  validates :phone, uniqueness: { message: 'is already in use!' }

  has_many :orders
  has_many :customer_addresses
end
