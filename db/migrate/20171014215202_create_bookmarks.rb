class CreateBookmarks < ActiveRecord::Migration
  def change
    create_table :bookmarks do |t|
      t.string :url
      t.references.index :topic

      t.timestamps null: false
    end
  end
end
