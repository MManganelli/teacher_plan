class User < ApplicationRecord
  # Direct associations

  has_many   :comments,
             :dependent => :destroy

  has_many   :coachings,
             :dependent => :destroy

  has_many   :improvement_plans,
             :dependent => :destroy

  # Indirect associations

  has_many   :implementation_plans,
             :through => :coachings,
             :source => :implementation_plan

  # Validations

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
