class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.string :category
      t.text :description
      t.integer :minimum_age
      t.integer :maximum_age
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
