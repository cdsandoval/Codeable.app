class Lesson < ApplicationRecord
  belongs_to :modulo
  has_many :sublessons
end
