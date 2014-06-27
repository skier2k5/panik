class CreateClient < ActiveRecord::Migration
  def change
    create_table :clients do |t|
      t.string :name
      t.string :host_name
    end
  end
end
