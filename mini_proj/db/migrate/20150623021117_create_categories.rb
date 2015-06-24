class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories, id: false do |t|
    #create_table :categories do |t|
	  t.integer :category_id, :options => 'PRIMARY KEY', null: false    
	  t.string :name
      t.timestamps null: false
    end

    add_index :categories, :category_id, unique: true
  end
end
