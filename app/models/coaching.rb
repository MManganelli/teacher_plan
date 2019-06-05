class Coaching < ApplicationRecord
  # Direct associations

  belongs_to :implementation_plan,
             :class_name => "ImprovementPlan",
             :foreign_key => "improvement_plan_id"

  # Indirect associations

  # Validations

end
