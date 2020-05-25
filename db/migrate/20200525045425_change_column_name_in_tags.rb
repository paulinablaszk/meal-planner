class ChangeColumnNameInTags < ActiveRecord::Migration[6.0]
  def change
    rename_column :tags, :title, :name
  end
end
