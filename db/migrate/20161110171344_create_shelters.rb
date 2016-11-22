class CreateShelters < ActiveRecord::Migration
  def change
    create_table :shelters do |t|
      t.string :name
      t.string :address
      t.string :contact_url
      t.string :hours_url
      t.string :map_url
      t.string :latitude
      t.string :longitude
      t.string :phone
      t.string :email

      t.timestamps null: false
    end
  end
end
