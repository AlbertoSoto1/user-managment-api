class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :name
      t.string :surname
      t.string :mail
      t.integer :age
      t.string :username
      t.string :password_digest
      t.integer :profile
      t.timestamps
    end
  end
end
