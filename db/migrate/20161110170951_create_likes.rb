class CreateLikes < ActiveRecord::Migration
  def change
    create_table :likes do |t|
      t.integer :dog_id
      t.integer :tinder_session_id
      t.string :type
      t.date :datetime

      t.timestamps null: false
    end
  end
end
