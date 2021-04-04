require 'rails_helper'

RSpec.describe "products/new", type: :view do
  before(:each) do
    assign(:product, Product.new(
      name: "MyString",
      price: 1,
      capacity_id: 1,
      category_id: 1,
      features: "MyText",
      producer: nil
    ))
  end

  it "renders new product form" do
    render

    assert_select "form[action=?][method=?]", products_path, "post" do

      assert_select "input[name=?]", "product[name]"

      assert_select "input[name=?]", "product[price]"

      assert_select "input[name=?]", "product[capacity_id]"

      assert_select "input[name=?]", "product[category_id]"

      assert_select "textarea[name=?]", "product[features]"

      assert_select "input[name=?]", "product[producer_id]"
    end
  end
end
