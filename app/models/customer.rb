class Customer < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  
  has_many :followings
  has_many :producers, through: :followings
  has_one :shipping
  accepts_nested_attributes_for :shipping

  with_options presence: true do
   validates :company_name
   validates :customer_name
   validates :responsible_person
  end
end
