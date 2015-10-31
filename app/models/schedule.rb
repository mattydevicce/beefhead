class Schedule < ActiveRecord::Base
  belongs_to :gym
  has_one :user
  has_and_belongs_to_many :muscle_groups
  validates check_for_muscle_groups

  def check_for_muscle_groups
  	if params[:schedule][:muscle_groups]
  		return true
  	end
  end

end
