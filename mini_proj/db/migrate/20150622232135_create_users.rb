class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      #t.integer :user_id #, :options => 'PRIMARY KEY'
      t.string :name
      t.timestamps null: false
    end
  end
end
