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

  PASSWORD_REGEX = /\A(?=.*?[a-z])(?=.*?\d)[a-z\d]+\z/i.freeze
  validates_format_of :password, with: PASSWORD_REGEX, message: '半角英字と半角数字の両方を含めて設定してください'
  
end
