class ChangeReceipesIdToRecipesId < ActiveRecord::Migration[6.0]
  def change
    rename_table :recips_tags, :recipes_tags
    rename_column :recipes_tags, :receipe_id, :recipe_id
    rename_column :quantities, :receipe_id, :recipe_id
  end
end
