class AddGenderToEntities < ActiveRecord::Migration
  def change
    add_column :entities, :gender, :string
  end
end
