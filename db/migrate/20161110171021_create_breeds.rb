class CreateBreeds < ActiveRecord::Migration
  def change
    create_table :breeds do |t|
      t.string :name
      t.integer :lifespan
      t.string :shed
      t.string :pure

      t.timestamps null: false
    end
  end
end
