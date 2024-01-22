require 'rails_helper'

RSpec.describe Product, type: :model do
  context "Validity of a product" do
    it "Product valid?" do
      c = Category.new
      c.name = "teste"
      c.save
      p = Product.new
      p.code = 10025
      p.name = "Blusa teste"
      p.price = 25.0
      p.quantity = 1
      p.category_id = c.id

      expect(p).to be_valid
      expect(p.code).to be >= 0
      expect(p.code).to an_instance_of(Integer)
      expect(p.price).to be >= 0
      expect(p.quantity).to be >= 0
    end
  end
end
