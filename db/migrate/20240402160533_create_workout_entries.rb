class CreateWorkoutEntries < ActiveRecord::Migration[7.0]
  def change
    create_table :workout_entries do |t|
      t.integer :reps
      t.integer :sets
      t.float :weight
      t.references :workout, null: false, foreign_key: true
      t.references :exercise, null: false, foreign_key: true

      t.timestamps
    end
  end
end
