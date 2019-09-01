class CriticalGemsUsed < ActiveRecord::Migration[5.2]
  def change

    add_column :portfolios, :critical_gems, :string
  end
end
