class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.integer :user_id
      t.belongs_to :group
      t.string :name
      t.string :phone
      t.string :email
      t.string :address


      t.timestamps
    end
  end
end
