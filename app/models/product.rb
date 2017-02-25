class Product < ActiveRecord::Base
  validates :title, :user_id, presence: true
  validates :price, presence:true
  validates_numericality_of :price, greater_than_or_equal_to: 0
  belongs_to :user
  scope :filter_by_title,         -> (keyword) {where("lower(title) LIKE ?", "%#{keyword.downcase}%")}
  scope :above_or_equal_to_price, -> (price)   {where("price >= ?", "#{price}")}
  scope :below_or_equal_to_price, -> (price)   {where("price <= ?", "#{price}")}
  scope :recent,                  ->           {order(:updated_at)}
end
