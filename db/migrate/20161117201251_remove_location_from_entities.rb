class RemoveLocationFromEntities < ActiveRecord::Migration
  def change
    remove_column :entities, :birth_location, :string
    remove_column :entities, :death_location, :string
  end
end
