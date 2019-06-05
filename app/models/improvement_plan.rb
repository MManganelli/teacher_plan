class ImprovementPlan < ApplicationRecord
  # Direct associations

  belongs_to :status

  belongs_to :user

  has_many   :comments,
             :dependent => :destroy

  has_many   :managers,
             :class_name => "Coaching",
             :dependent => :destroy

  has_many   :goals,
             :foreign_key => "imprevement_plan_id",
             :dependent => :destroy

  # Indirect associations

  # Validations

end
