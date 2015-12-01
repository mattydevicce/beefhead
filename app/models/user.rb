class User < ActiveRecord::Base
  has_secure_password
  belongs_to :gym
  has_many :schedules
  validates :email, uniqueness: true
  validates :name, :email, :password_confirmation, presence: true

end
