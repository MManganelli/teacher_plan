class CreateGoals < ActiveRecord::Migration[5.1]
  def change
    create_table :goals do |t|
      t.integer :user_id
      t.string :description
      t.integer :imprevement_plan_id

      t.timestamps
    end
  end
end
