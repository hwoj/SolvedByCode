class Job < ApplicationRecord
  validates :description, presence: true
  validates :title, presence: true
  validates :technologies, presence: true
end
