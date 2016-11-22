class CreateTindersessions < ActiveRecord::Migration
  def change
    create_table :tindersessions do |t|
      t.integer :uid
      t.date :datetime
      t.i :number_of_likes_within_session
      t.integer :number_of_dislikes_within_session
      t.integer :number_of_hotdogs_within_session
      t.integer :max_set_of_dogs

      t.timestamps null: false
    end
  end
end
