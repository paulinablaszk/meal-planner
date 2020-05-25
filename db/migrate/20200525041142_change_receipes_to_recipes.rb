class ChangeReceipesToRecipes < ActiveRecord::Migration[6.0]
  def change
    rename_table :receipes, :recipes
    rename_table :receipes_tags, :recips_tags
  end
end
