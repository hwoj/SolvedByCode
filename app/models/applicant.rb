class Applicant < ApplicationRecord
  mount_uploader :resume, ResumeUploader
  validates :username, presence: true, uniqueness: {case_sensitive: false}
  has_secure_password
  VALID_EMAIL_REGEX= /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, uniqueness: {case_sensitive: false}, format: {with: VALID_EMAIL_REGEX, message: "Invalid email"}
end