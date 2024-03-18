class AddExerciseToWorkoutEntries < ActiveRecord::Migration[7.0]
  def change
    add_reference :workout_entries, :exercise, foreign_key: true
  end
end
