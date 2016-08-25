class AddRefIdToEntities < ActiveRecord::Migration
  def change
    add_column :entities, :RefId, :string
  end
end
