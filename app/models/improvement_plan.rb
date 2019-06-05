class ImprovementPlan < ApplicationRecord
  # Direct associations

  has_many   :managers,
             :class_name => "Coaching",
             :dependent => :destroy

  has_many   :goals,
             :foreign_key => "imprevement_plan_id",
             :dependent => :destroy

  # Indirect associations

  # Validations

end
