class User < ActiveRecord::Base
  has_secure_password
  belongs_to :gym
  validates :email, uniqueness: true
  validates :name, :email, :password_confirmation, presence: true
  validates :password, length: { minimum: 6 }
end
