class CreateItems < ActiveRecord::Migration
  def change
    create_table :items, id: false do |t|
    #create_table :items do |t|
      t.integer :item_id, :options => 'PRIMARY KEY', null: false
      t.string :name
      t.timestamps null: false
    end

    add_index :items, :item_id, unique: true
  end
end
