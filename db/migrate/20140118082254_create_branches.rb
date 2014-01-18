class CreateBranches < ActiveRecord::Migration
  def change
    create_table :branches do |t|
      t.string :name
      t.string :email
      t.belongs_to :city

      t.timestamps
    end
  end
end
