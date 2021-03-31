class CreateFollowings < ActiveRecord::Migration[6.0]
  def change
    create_table :followings do |t|
      t.references :customer, null: false, foreign_key: true
      t.references :producer, null: false, foreign_key: true
      t.timestamps
    end
  end
end
