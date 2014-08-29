class CreateEmails < ActiveRecord::Migration
  def change
    create_table :emails do |t|
      t.references :arrival
      t.references :client
      t.string :email

      t.timestamps
    end

    add_index :emails, :client_id
    add_index :emails, :arrival_id
    add_index :emails, [:client_id, :email], :unique => true
    add_index :emails, :created_at
  end
end
