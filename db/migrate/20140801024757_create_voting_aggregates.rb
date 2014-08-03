class CreateVotingAggregates < ActiveRecord::Migration
  def change
    create_table :voting_aggregates do |t|
      t.references :animal_picture
      t.integer :cute_votes, :null => false, :default => 0
      t.integer :ugly_votes, :null => false, :default => 0
    end
    add_index :voting_aggregates, :animal_picture_id
  end
end
