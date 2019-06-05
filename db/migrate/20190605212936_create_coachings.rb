class CreateCoachings < ActiveRecord::Migration[5.1]
  def change
    create_table :coachings do |t|
      t.integer :improvement_plan_id
      t.integer :user_id

      t.timestamps
    end
  end
end
