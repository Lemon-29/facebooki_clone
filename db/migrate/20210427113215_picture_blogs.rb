class PictureBlogs < ActiveRecord::Migration[5.2]
  def change
    create_table :picture_blogs do |t|
      t.string :title
      t.text :content
      t.text :image
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
