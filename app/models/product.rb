class Product < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :capacity
  belongs_to :main_product
  belongs_to :producer
  has_one_attached :image
  

  with_options presence: true do
    validates :name
    validates :image
    validates :price
    validates :capacity_id
    validates :main_product_id
    validates :features
  end

  with_options numericality: { other_than: 0 } do
    validates :capacity_id
    validates :main_product_id
  end
end
