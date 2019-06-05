require 'rails_helper'

RSpec.describe Coaching, type: :model do
  
    describe "Direct Associations" do

    it { should belong_to(:implementation_plan) }

    end

    describe "InDirect Associations" do

    end

    describe "Validations" do
      
    end
end
