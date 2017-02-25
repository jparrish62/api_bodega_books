FactoryGirl.define do
  factory :product do
    title {FFaker::Product.product_name}
    price {rand() * 1.00}
    published false
    user_id 1
    user
  end
end
