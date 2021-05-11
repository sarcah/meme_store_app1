class CreateMemes < ActiveRecord::Migration[6.1]
  def change
    create_table :memes do |t|
      t.string :name
      t.string :description
      t.integer :downloads
      t.decimal :price
      t.string :keywords
      t.string :string

      t.timestamps
    end
  end
end
