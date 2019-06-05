class CreateComments < ActiveRecord::Migration[5.1]
  def change
    create_table :comments do |t|
      t.integer :improvement_plan_id
      t.integer :goal_id
      t.integer :user_id

      t.timestamps
    end
  end
end
