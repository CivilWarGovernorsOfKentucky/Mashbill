class CreateEntities < ActiveRecord::Migration
  def change
    create_table :entities do |t|
      t.string :name
      t.string :entity_type
      t.date :birth_date
      t.string :birth_location
      t.date :death_date
      t.string :death_location
      t.text :biography
      t.text :bibliography
      t.references :user, index: true

      t.timestamps
    end
  end
end
