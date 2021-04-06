class Producer < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :category
  belongs_to :main_product
  has_many :followings
  has_many :customers, through: :followings
  has_one :address
  accepts_nested_attributes_for :address
  has_many :products

  with_options presence: true do
    validates :farm_name
    validates :category_id
    validates :main_product_id
    validates :farm_characteristic
  end

  PASSWORD_REGEX = /\A(?=.*?[a-z])(?=.*?\d)[a-z\d]+\z/i.freeze
  validates_format_of :password, with: PASSWORD_REGEX, message: '半角英字と半角数字の両方を含めて設定してください'

  with_options numericality: { other_than: 0, message: 'を選択してください' } do
    validates :category_id
    validates :main_product_id
  end
end
