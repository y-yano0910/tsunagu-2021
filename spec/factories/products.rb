FactoryBot.define do
  factory :product do
    name { "MyString" }
    price { 1 }
    capacity_id { 1 }
    category_id { 1 }
    features { "MyText" }
    producer { nil }
  end
end
