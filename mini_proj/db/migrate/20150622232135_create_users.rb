class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users, id: false do |t|
    #create_table :users do |t|
      t.integer :user_id, :options => 'PRIMARY KEY', null: false
      t.string :name
      t.timestamps null: false
    end

    add_index :users, :user_id, unique: true
  end
end
