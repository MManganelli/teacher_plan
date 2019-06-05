class ImprovementPlan < ApplicationRecord
  # Direct associations

  has_many   :goals,
             :foreign_key => "imprevement_plan_id",
             :dependent => :destroy

  # Indirect associations

  # Validations

end
