class Customer < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  belongs_to :primary_shipping_address

  validates_presence_of :name, :phone, :email
  validates :phone, uniqueness: { message: 'is already in use!' }

end
