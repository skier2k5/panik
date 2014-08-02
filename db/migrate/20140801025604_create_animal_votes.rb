class CreateAnimalVotes < ActiveRecord::Migration
  def change
    create_table :animal_votes do |t|
      t.references :arrival
      t.references :animal_picture
      t.string :vote

      t.timestamps
    end
    add_index :animal_votes, :arrival_id
    add_index :animal_votes, :animal_picture_id
    add_index :animal_votes, :vote
    add_index :animal_votes, :created_at
  end
end
