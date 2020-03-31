class CreateReceipes < ActiveRecord::Migration[6.0]
  def change
    create_table :receipes do |t|
      t.string :title
      t.integer :prep_time
      t.integer :servings, :default => 1  
      t.text :instructions

      t.timestamps
    end
  end
end
