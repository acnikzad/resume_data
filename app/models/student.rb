class Student < ApplicationRecord
  has_secure_password
  validates :email, presence: true, uniqueness: true

  has_many :skills
  has_many :education
  has_many :experiences
  has_many :capstones
  
end
