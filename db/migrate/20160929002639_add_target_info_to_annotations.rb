class AddTargetInfoToAnnotations < ActiveRecord::Migration
  def change
    add_column :annotations, :prefix, :string
    add_column :annotations, :suffix, :string
    add_column :annotations, :start_container, :string
  end
end
