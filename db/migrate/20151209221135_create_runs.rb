class CreateRuns < ActiveRecord::Migration
  def change
    create_table :runs do |t|
      t.references :user, index: true, foreign_keys: true

      t.date :date
      t.integer :distance
      t.time :start_time
      t.float :duration
      t.float :pace
      t.string :route
      t.string :run_type
      t.string :comments
      t.string :shoes
      t.float :weight
      t.float :calories

      t.timestamps
    end
  end
end
