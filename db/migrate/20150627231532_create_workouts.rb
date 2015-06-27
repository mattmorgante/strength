class CreateWorkouts < ActiveRecord::Migration
  def change
    create_table :workouts do |t|
      t.datetime :date
      t.string :name
      t.integer :energy
      t.integer :length
      t.string :time_of_day

      t.timestamps null: false
    end
  end
end
