class CreateBranches < ActiveRecord::Migration

  def up
    create_table :branches do |t|
      t.string :name
      t.string :email

      t.timestamps
    end
  end

  def down
    drop_table :branches
  end

end
