class RemoveDatesFromEntities < ActiveRecord::Migration
  def change
    remove_column :entities, :birth_date, :datetime
    remove_column :entities, :death_date, :datetime
  end
end
