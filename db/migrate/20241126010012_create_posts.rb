class CreatePosts < ActiveRecord::Migration[7.1]
  def change
    create_table :posts do |t|
      t.text :body
      t.string :name
      t.integer :age
      t.integer :user_id

      t.timestamps
    end
  end
end
