class CreateCelebHeadlineAndCategories < ActiveRecord::Migration
  def change
    create_table :celeb_headlines do |t|
      t.text :title, :null => false
      t.text :url, :null => false
      t.datetime :posted_at, :null => false
      t.string :source, :null => false
      t.string :hashed_headline, :null => false

      t.timestamps
    end
    add_index :celeb_headlines, :source
    add_index :celeb_headlines, :hashed_headline, :unique => true
    add_index :celeb_headlines, :created_at
    add_index :celeb_headlines, :updated_at

    create_table :categories do |t|
      t.string :name, :null => false
    end
    add_index :categories, :name, :unique => true

    create_table :celeb_headline_categories do |t|
      t.integer :category_id, :null => false
      t.integer :celeb_headline_id, :null => false
    end
    add_index :celeb_headline_categories, :category_id
    add_index :celeb_headline_categories, :celeb_headline_id
  end
end
