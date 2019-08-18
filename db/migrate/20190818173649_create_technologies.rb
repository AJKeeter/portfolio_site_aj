class CreateTechnologies < ActiveRecord::Migration[5.2]
  def change
    create_table :technologies do |t|
      t.string :name
      t.integer :portfolio_id

      t.timestamps
    end

    change_column :blogs, :topic_id, :integer
  end
end
