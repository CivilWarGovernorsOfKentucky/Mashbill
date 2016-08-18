class CreateAnnotations < ActiveRecord::Migration
  def change
    create_table :annotations do |t|
      t.references :document, index: true
      t.string :verbation
      t.references :user, index: true
      t.references :entity, index: true
      t.date :hypothesis_date
      t.string :hypothesis_annotation_id
      t.string :hypothesis_user

      t.timestamps
    end
  end
end
