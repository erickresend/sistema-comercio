class Product < ApplicationRecord
  def self.search(query)
    where("name like ?", "%#{query}%")
  end
end
