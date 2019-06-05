class Goal < ApplicationRecord
  # Direct associations

  belongs_to :imprevement_plan,
             :class_name => "ImprovementPlan"

  # Indirect associations

  # Validations

end
