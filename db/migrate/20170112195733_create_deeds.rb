class CreateDeeds < ActiveRecord::Migration
  def change
    create_table :deeds do |t|
      t.string :deed_type
      t.belongs_to :user, index: true, foreign_key: true
      t.belongs_to :document, index: true, foreign_key: true
      t.belongs_to :entity, index: true, foreign_key: true
      t.belongs_to :relationship, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
