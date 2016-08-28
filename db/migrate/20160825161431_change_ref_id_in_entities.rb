class ChangeRefIdInEntities < ActiveRecord::Migration
  def change
  	rename_column :entities, :RefId, :ref_id
  end
end
