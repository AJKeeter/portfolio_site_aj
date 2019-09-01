class AddsDataModelToPortfolio < ActiveRecord::Migration[5.2]
  def change

    add_column :portfolios, :data_model_image, :text
  end
end
