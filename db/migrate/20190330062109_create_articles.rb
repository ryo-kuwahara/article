class CreateArticles < ActiveRecord::Migration[5.0]
  def change
    create_table :articles do |t|
      t.string :image
      t.string :title

      t.timestamps
    end
  end
end
