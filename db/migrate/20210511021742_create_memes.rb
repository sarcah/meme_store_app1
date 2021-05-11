class CreateMemes < ActiveRecord::Migration[6.1]
  def change
    create_table :memes do |t|
      t.string :name
      t.text :description
      t.integer :downloads
      t.decimal :price
      t.string :category
      t.string :string

      t.timestamps
    end
  end
end
