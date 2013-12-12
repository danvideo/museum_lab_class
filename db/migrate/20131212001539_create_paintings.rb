class CreatePaintings < ActiveRecord::Migration
  def change
    create_table :paintings do |t|
      t.string :title
      t.references :artist, index: true
      t.references :museum, index: true
      t.string :url

      t.timestamps
    end
  end
end
