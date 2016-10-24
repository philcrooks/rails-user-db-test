class CreateMountains < ActiveRecord::Migration
  def change
    create_table :mountains do |t|
      t.integer :mtn_id
      t.date :climbed_on

      t.timestamps null: false
    end
  end
end
