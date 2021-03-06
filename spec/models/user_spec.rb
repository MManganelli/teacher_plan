require 'rails_helper'

RSpec.describe User, type: :model do
  
    describe "Direct Associations" do

    it { should have_many(:comments) }

    it { should have_many(:coachings) }

    it { should have_many(:improvement_plans) }

    end

    describe "InDirect Associations" do

    it { should have_many(:implementation_plans) }

    end

    describe "Validations" do
      
    end
end
