class CreateJoinTableEntityRaceDescription < ActiveRecord::Migration
  def change
    create_join_table :entities, :race_descriptions do |t|
      t.index [:entity_id, :race_description_id], {:name => "entity_race_index"}
      t.index [:race_description_id]
    end
  end
end
