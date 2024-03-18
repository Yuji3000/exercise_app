class CreateBodyWeights < ActiveRecord::Migration[7.0]
  def change
    create_table :body_weights do |t|
      t.integer :lbs
      t.timestamps
      t.references :user, foreign_key: true
    end
  end
end
