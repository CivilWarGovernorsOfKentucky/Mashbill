class AddDatesToEntities < ActiveRecord::Migration
  def change
    add_column :entities, :birth_date, :string
    add_column :entities, :death_date, :string
  end
end
