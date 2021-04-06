class Address < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :prefecture
  belongs_to :producer

  with_options presence: true do
    validates :postal_code
    validates :prefecture_id
    validates :municipality
    validates :house_number
    validates :phone_number
    validates :producer
  end

  validates_format_of :postal_code, with: /\A[0-9]{3}-[0-9]{4}\z/, message: '正しく入力してください'

  validates_numericality_of :phone_number, only_integer: true, message: '半角数値で入力してください'
  validates_length_of :phone_number, maximum: 11

  validates :prefecture_id, numericality: { other_than: 0, message: 'を選択してください' }
end
