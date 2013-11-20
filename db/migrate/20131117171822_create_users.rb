class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :login
      t.string :password
      t.string :email
      t.string :firstname
      t.string :lastname
      t.string :address
      t.integer :zipcode
      t.string :city
      t.string :status

      t.timestamps
    end
  end
end