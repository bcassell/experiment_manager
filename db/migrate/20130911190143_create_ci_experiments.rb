class CreateCiExperiments < ActiveRecord::Migration
  def change
    create_table :ci_experiments do |t|
      t.string :game
      t.float :alpha
      t.float :delta
      t.integer :step_size
      t.integer :aggregate_level
      t.integer :wait_length
      t.integer :max_step
      t.string :data

      t.timestamps
    end
  end
end
