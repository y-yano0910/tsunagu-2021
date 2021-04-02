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

  with_options numericality: { other_than: 0 } do
    validates :category_id
    validates :main_product_id
  end
end
