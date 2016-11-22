class CreateDogs < ActiveRecord::Migration
  def change
    create_table :dogs do |t|
      t.integer :dog_id
      t.integer :breed_id
      t.integer :shelter_id
      t.string :name
      t.string :age
      t.string :gender
      t.string :size
      t.string :weight
      t.string :photo_link
      t.integer :number_of_likes
      t.integer :number_of_dislikes
      t.integer :number_of_hotdogs
      t.string :has_been_adopted
      t.string :is_available
      t.string :foster_family
      t.string :number_of_times_attempted_to_adopt
      t.string :hot_dog

      t.timestamps null: false
    end
  end
end
