class AddLocationToEntities < ActiveRecord::Migration
  def change
    add_column :entities, :lat, :decimal, {:precision=>10, :scale=>6}
    add_column :entities, :long, :decimal, {:precision=>10, :scale=>6}
  end
end
