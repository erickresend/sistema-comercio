class Product < ApplicationRecord

  belongs_to :category

  validates :code, :name, :price, :quantity, presence: true
  validates :code, length: { is: 5}
  validates :name, length: { in: 5..30 }
  validates :code, :quantity , numericality: { only_integer: true }
  validates :code, :price, :quantity , numericality: { greater_than: 0 }
  validates :code, uniqueness: true

  def self.search(query)
    where("name like ?", "%#{query}%")
  end
end
