class Following < ApplicationRecord
  belongs_to :producer
  belongs_to :customer
end
