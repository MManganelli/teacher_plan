class CreateImprovementPlans < ActiveRecord::Migration[5.1]
  def change
    create_table :improvement_plans do |t|
      t.string :description
      t.integer :user_id
      t.integer :status_id

      t.timestamps
    end
  end
end
