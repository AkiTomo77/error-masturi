class CreatePosts < ActiveRecord::Migration[7.1]
  def change
    create_table :posts do |t|
      t.boolean :body
      t.string :name
      t.integer :age

      t.timestamps
    end
  end
end
