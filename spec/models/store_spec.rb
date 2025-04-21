#frozen_string_literal: true

require 'rails_helper'

RSpec.describe Store, type: :model do
  subject { create(:store) }

  describe "associations" do
    it { should have_many(:user_stores) }
    it { should have_many(:products) }
  end

  describe "validations" do
    it { should validate_presence_of(:name) }
  end
end
