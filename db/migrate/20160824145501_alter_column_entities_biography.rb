class AlterColumnEntitiesBiography < ActiveRecord::Migration
  def change
    change_table :entities do |t|
      t.change :biography, :text
   	end
  end
end
