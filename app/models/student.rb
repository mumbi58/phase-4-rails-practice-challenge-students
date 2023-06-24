class Student < ApplicationRecord
    belongs_to :instructor
    validates :name, :age, presence: true
    validates :age, numericality: { greater_than_or_equal_to: 18 }
  end
  