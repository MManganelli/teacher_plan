require 'rails_helper'

RSpec.describe Goal, type: :model do
  
    describe "Direct Associations" do

    it { should have_many(:comments) }

    it { should have_many(:actions) }

    it { should belong_to(:imprevement_plan) }

    end

    describe "InDirect Associations" do

    end

    describe "Validations" do
      
    end
end
