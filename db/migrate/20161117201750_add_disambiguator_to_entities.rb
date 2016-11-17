class AddDisambiguatorToEntities < ActiveRecord::Migration
  def change
    add_column :entities, :disambiguator, :string
  end
end
