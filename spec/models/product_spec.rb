require 'rails_helper'

RSpec.describe Product, type: :model do
  subject { create(:product) }

  describe "associations" do
    it { should belong_to(:store) }
  end

  describe "validations" do
    it { should validate_presence_of(:name) }
    it { should validate_presence_of(:price_cents) }
    it { should validate_presence_of(:quantity) }
    it { should validate_presence_of(:sku) }

    it { should validate_numericality_of(:price_cents).only_integer.is_greater_than_or_equal_to(0) }
    it { should validate_numericality_of(:quantity).only_integer.is_greater_than_or_equal_to(0) }

    it { should validate_uniqueness_of(:sku).scoped_to(:store_id) }
  end
end
