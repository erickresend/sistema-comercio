require 'rails_helper'

RSpec.describe Category, type: :model do
  context "Validity of a category" do
    it "Category valid?" do
      c = create(:category)
      expect(c).to be_valid
    end

    it "Invalid category" do
      c = create(:category)
      c.name = nil
      expect(c).to_not be_valid
    end
  end
end
