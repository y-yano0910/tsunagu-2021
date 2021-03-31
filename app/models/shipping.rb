class Shipping < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :prefecture
  belongs_to :customer

  with_options presence: true do
    validates :postal_code
    validates :prefecture_id
    validates :municipality
    validates :house_number
    validates :phone_number
    validates :customer
  end

  validates :prefecture_id, numericality: { other_than: 0 }
end
