class AddWorkoutIdToExercise < ActiveRecord::Migration
  def change
    add_column :exercises, :workout_id, :string
    add_index :exercises, :workout_id
  end
end
