class Schedule < ActiveRecord::Base
  belongs_to :gym
  has_and_belongs_to_many :muscle_groups
end
