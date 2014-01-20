class CreateContacts < ActiveRecord::Migration
  
  def up
    create_table :contacts do |t|
      t.string :name, null: false
      t.string :email, null: false
      t.string :city_ids
      t.text :description

      t.timestamps
    end
    add_index :contacts, :email
  end

  def down
    drop_table :contacts
  end 

end
