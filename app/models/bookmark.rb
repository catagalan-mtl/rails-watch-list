class Bookmark < ApplicationRecord
  belongs_to :movie, dependent: :destroy
  belongs_to :list

  validates :comment, length: { minimum: 6 }
  validates :movie, uniqueness: { scope: :list }
  validates_associated :movie
  validates_associated :list
end
