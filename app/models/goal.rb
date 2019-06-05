class Goal < ApplicationRecord
  # Direct associations

  has_many   :actions,
             :dependent => :destroy

  belongs_to :imprevement_plan,
             :class_name => "ImprovementPlan"

  # Indirect associations

  # Validations

end
