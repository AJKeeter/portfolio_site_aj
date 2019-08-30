class CreateTechnologies < ActiveRecord::Migration[5.2]
  def change

    drop_table :technologies
    create_table :technologies do |t|
      t.string :name
      t.integer :portfolio_id

      t.timestamps
    end

  end
end
