require 'rails_helper'

RSpec.describe Client, type: :model do
  context "Validity of a product" do
    it "Product valid?" do
      c = create(:client)

      expect(c).to be_valid
    end
  end
end
