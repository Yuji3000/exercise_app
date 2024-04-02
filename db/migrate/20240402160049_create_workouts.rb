class CreateWorkouts < ActiveRecord::Migration[7.0]
  def change
    create_table :workouts do |t|
      t.string :name
      t.string :day_of_week
      t.string :notes
      t.references :program, null: false, foreign_key: true

      t.timestamps
    end
  end
end
