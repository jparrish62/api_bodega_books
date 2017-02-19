require 'rails_helper'

RSpec.describe Api::V1::ProductsController, type: :controller do
  describe "GET #show" do
    before(:each) do
      @product = FactoryGirl.create(:product)
      get :show, params: {id: @product.id}
    end

    it "returns the information about a reporter on a hash" do
      product_response = json_response
      expect(product_response[:title]).to eq @product.title
    end

    it {should respond_with 200}
  end


  describe "GET #index" do
    before(:each) do
      4.times {FactoryGirl.create :product}
      get :index
    end

    it "returns 4 records from the database" do
      products_response = json_response
      expect(products_response).to have_at_least(4).items
    end

    it { should respond_with 200 }
  end
end