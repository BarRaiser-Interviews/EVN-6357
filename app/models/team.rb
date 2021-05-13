class Team < ApplicationRecord
  has_many :developers

  validates_presence_of :name, on: :create, message: "can't be blank"
end
