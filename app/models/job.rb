class Job < ApplicationRecord
  belongs_to :company
  validates :description, presence: true
  validates :title, presence: true
  validates :technologies, presence: true
end
