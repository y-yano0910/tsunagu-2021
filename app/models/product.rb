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

  validates_format_of :price, with: /\A[0-9]+\z/, message: '半角数値で入力してください'
  validates_numericality_of :price, only_integer: true, greater_than_or_equal_to: 10, less_than_or_equal_to: 999_999,
                                    message: '決められた数値の範囲内で入力してください'


  with_options numericality: { other_than: 0, message: 'を選択してください' } do
    validates :capacity_id
    validates :main_product_id
  end
end
