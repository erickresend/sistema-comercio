class Client < ApplicationRecord

  validates :name, :email, :phone, :address, presence: true
  validates :email, uniqueness: true

  def self.search(query)
    where("name like ?", "%#{query}%")
  end
end
