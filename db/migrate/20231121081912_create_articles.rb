class CreateArticles < ActiveRecord::Migration[7.0]
  def change
    create_table :articles do |t|
      t.references :user, null: false, foreign_key: true
      t.string :title
      t.string :content
      t.string :image
      t.integer :price
      t.integer :level

      t.timestamps
    end
  end
end
