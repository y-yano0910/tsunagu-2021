require 'rails_helper'

RSpec.describe "products/edit", type: :view do
  before(:each) do
    @product = assign(:product, Product.create!(
      name: "MyString",
      price: 1,
      capacity_id: 1,
      category_id: 1,
      features: "MyText",
      producer: nil
    ))
  end

  it "renders the edit product form" do
    render

    assert_select "form[action=?][method=?]", product_path(@product), "post" do

      assert_select "input[name=?]", "product[name]"

      assert_select "input[name=?]", "product[price]"

      assert_select "input[name=?]", "product[capacity_id]"

      assert_select "input[name=?]", "product[category_id]"

      assert_select "textarea[name=?]", "product[features]"

      assert_select "input[name=?]", "product[producer_id]"
    end
  end
end
