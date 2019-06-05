class Comment < ApplicationRecord
  # Direct associations

  belongs_to :goal

  belongs_to :user

  belongs_to :improvement_plan

  # Indirect associations

  # Validations

end
