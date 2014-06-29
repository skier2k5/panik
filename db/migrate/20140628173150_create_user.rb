class CreateUser < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :email

      t.timestamps
    end
    add_index :users, :email
    add_index :users, :created_at
    add_index :users, :updated_at
  end
end
