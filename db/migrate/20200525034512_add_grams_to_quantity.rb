class AddGramsToQuantity < ActiveRecord::Migration[6.0]
  def change
    add_column :quantities, :grams, :decimal
  end
end
