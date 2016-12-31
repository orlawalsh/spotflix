class AddAttributesToSong < ActiveRecord::Migration[5.0]
  def change
    add_column :songs, :title, :string
    add_column :songs, :description, :text
    add_column :songs, :itunes, :string
    add_column :songs, :amazon, :string
    add_column :songs, :playstore, :string
  end
end
