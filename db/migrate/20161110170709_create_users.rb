class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :email
      t.integer :user_id
      t.string :password
      t.string :type
      t.integer :tinder_session_id

      t.timestamps null: false
    end
  end
end
