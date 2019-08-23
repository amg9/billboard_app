class CreateTunes < ActiveRecord::Migration[6.0]
  def change
    create_table :tunes do |t|
      t.string :title
      t.belongs_to :artist, null: false, foreign_key: true
      t.string :album
      t.string :release_date
      t.text :lyrics
      t.belongs_to :board, foreign_key: true

      t.timestamps
    end
  end
end
