class CreateUserItems < ActiveRecord::Migration
  def change
    create_table :user_items do |t|
      t.belongs_to :user, index: true 
      t.belongs_to :item, index: true
      t.timestamps null: false
    end
  end
end
