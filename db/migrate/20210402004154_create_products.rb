class CreateProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :products do |t|
      t.string     :name,            null: false
      t.integer    :price,           null: false
      t.integer    :capacity_id,     null: false
      t.integer    :main_product_id, null: false
      t.text       :features,        null: false
      t.references :producer,        null: false, foreign_key: true
      t.timestamps
    end
  end
end
