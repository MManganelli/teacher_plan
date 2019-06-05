require 'rails_helper'

RSpec.describe ImprovementPlan, type: :model do
  
    describe "Direct Associations" do

    it { should belong_to(:user) }

    it { should have_many(:comments) }

    it { should have_many(:managers) }

    it { should have_many(:goals) }

    end

    describe "InDirect Associations" do

    end

    describe "Validations" do
      
    end
end
