class Product < ApplicationRecord
  validates :title, :user_id, presence: true
  validates :price, presence:true
  validates_numericality_of :price, greater_than_or_equal_to: 0
  belongs_to :user 
end
