class CreateSongs < ActiveRecord::Migration
  def change
    create_table :songs do |t|
      t.integer :collection_id
      t.string :name

      t.timestamps
    end
  end
end
