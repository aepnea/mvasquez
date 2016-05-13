class CreatePhotos < ActiveRecord::Migration
  def change
    create_table :photos do |t|
      t.string :name
      t.string :author
      t.date :date
      t.text :description
      t.string :image

      t.timestamps null: false
    end
  end
end
