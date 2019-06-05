class CreateActions < ActiveRecord::Migration[5.1]
  def change
    create_table :actions do |t|
      t.datetime :target_date
      t.string :lead_person
      t.string :resources_needed
      t.string :implementation_specifics
      t.string :measure_success
      t.integer :goal_id

      t.timestamps
    end
  end
end
