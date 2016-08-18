class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :hypothesis_user

      t.timestamps
    end
  end
end
