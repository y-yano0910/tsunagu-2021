class Producer < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :category
  belongs_to :main_product
  has_many :customers

  with_options presence: true do
    validates :farm_name
    validates :category_id
    validates :main_product_id
    validates :farm_characteristic
  end

end
