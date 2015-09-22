class CreateSongreviews < ActiveRecord::Migration
  def change
    create_table :songreviews do |t|

      t.timestamps null: false
    end
  end
end
