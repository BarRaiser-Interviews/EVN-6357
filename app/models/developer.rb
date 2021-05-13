class Developer < ApplicationRecord
  belongs_to :team

  validates_presence_of :name, :phone_number, on: :create, message: "can't be blank"
  validates :phone_number, presence: true, numericality: true, length: { minimum: 10, maximum: 10 }
end
