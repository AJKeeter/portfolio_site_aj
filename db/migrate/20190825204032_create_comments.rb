class CreateComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |t|
      t.text :content
      # t.references :user, foreign_key: true
      # t.references :blog, foreign_key: true
      #
      t.integer :user_id
      t.integer :blog_id



      t.timestamps
    end

    add_index :comments, :user_id
    add_index :comments, :blog_id
  end
end
