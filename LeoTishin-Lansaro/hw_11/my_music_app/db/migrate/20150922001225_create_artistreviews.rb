class CreateArtistreviews < ActiveRecord::Migration
  def change
    create_table :artistreviews do |t|

      t.timestamps null: false
    end
  end
end
