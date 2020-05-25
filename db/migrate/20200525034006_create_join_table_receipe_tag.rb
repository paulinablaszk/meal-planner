class CreateJoinTableReceipeTag < ActiveRecord::Migration[6.0]
  def change
    create_join_table :receipes, :tags do |t|
      # t.index [:receipe_id, :tag_id]
      # t.index [:tag_id, :receipe_id]
    end
  end
end
