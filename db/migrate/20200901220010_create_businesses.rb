class CreateBusinesses < ActiveRecord::Migration[5.2]
  def change
    create_table :businesses do |t|
      t.string :biz_name, null: false
      t.string :price, null: false
      t.string :address, null: false
      t.string :city, null: false
      t.string :state, null: false
      t.string :zipcode, null: false
      t.float :lat, null: false
      t.float :lng, null: false
      t.integer :rating, null: false
      t.text :hours, null: false
      t.text :business_info, null: false
      t.string :phone_number
      t.string :website
      t.string :category
      t.string :hours, array: true
      t.timestamps
    end
    add_index :businesses, :biz_name
    add_index :businesses, :address, unique: true
    add_index :businesses, :city
    add_index :businesses, :state
    add_index :businesses, :zipcode
  end
end
