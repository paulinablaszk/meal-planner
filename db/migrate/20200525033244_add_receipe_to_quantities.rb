class AddReceipeToQuantities < ActiveRecord::Migration[6.0]
  def change
    add_reference :quantities, :receipe, null: false, foreign_key: true
  end
end
