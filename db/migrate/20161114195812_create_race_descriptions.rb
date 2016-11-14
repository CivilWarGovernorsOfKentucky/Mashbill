class CreateRaceDescriptions < ActiveRecord::Migration
  def change
    create_table :race_descriptions do |t|
      t.string :race_description

      t.timestamps null: false
    end
  end
end
