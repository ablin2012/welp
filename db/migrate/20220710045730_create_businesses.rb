class CreateBusinesses < ActiveRecord::Migration[5.2]
  def change
    create_table :businesses do |t|
      t.string :name, null: false
      t.string :category, null: false
      t.string :address, null: false
      t.string :city, null: false
      t.string :state, null: false
      t.string :zip_code, null: false
      t.decimal :lat, null: false
      t.decimal :lng, null: false
      t.string :phone, null: false
      t.string :hours, null: false
      t.string :price, null: false
      t.string :website
      t.timestamps 
    end
    add_index :businesses, :name, unique: true
    add_index :businesses, :address
  end
end
