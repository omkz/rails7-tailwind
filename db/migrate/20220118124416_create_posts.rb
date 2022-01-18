class CreatePosts < ActiveRecord::Migration[7.0]
  def change
    create_table :posts do |t|
      t.string :title
      t.text :body
      t.integer :like
      t.references :account, null: false, foreign_key: true

      t.timestamps
    end
  end
end
