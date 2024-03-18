class CreateBodyWeights < ActiveRecord::Migration[7.0]
  def change
    create_table :body_weights do |t|
      t.integer :lbs
      t.timestamps
    end
  end
end
