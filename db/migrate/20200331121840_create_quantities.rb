class CreateQuantities < ActiveRecord::Migration[6.0]
  def change
    create_table :quantities do |t|
      t.decimal :value, precision: 8, scale: 2
     
      t.timestamps
    end
  end
end
