class CreateInitialMigration < ActiveRecord::Migration[5.1]
  def change
    create_table :artists do |t|
      t.string :name
    end

    create_table :songs do |t|
      t.integer :artist_id
      t.string :title
      t.integer :album_id
    end

   create_table :albums do |t|
    t.string :title
    t.integer :artist_id
    end
  end
end
