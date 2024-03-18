class CreateWorkoutEntries < ActiveRecord::Migration[7.0]
  def change
    create_table :workout_entries do |t|
      t.integer :reps
      t.integer :sets
      t.integer :weight_lbs

      t.timestamps
    end
  end
end
