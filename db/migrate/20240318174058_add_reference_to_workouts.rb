class AddReferenceToWorkouts < ActiveRecord::Migration[7.0]
  def change
    add_reference :workouts, :program, foreign_key: true
  end
end
