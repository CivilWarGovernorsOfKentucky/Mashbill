class CreateRelationships < ActiveRecord::Migration
  def change
    create_table :relationships do |t|
      t.references :entity_1, index: true
      t.references :entity_2, index: true
      t.string :relationship_type
      t.references :user, index: true
      t.text :citation

      t.timestamps
    end
  end
end
