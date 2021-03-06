class GymsController < ApplicationController
  before_action :set_gym, only: [:show, :edit, :update, :destroy]

  def schedules
    @workouts = {'chest' => 0, 'shoulders' => 0, 'back' => 0, 'legs' => 0, 'arms' => 0}
    hour = params[:time].to_i - 5
    if params[:format] == '5'
      min = 30
      display_min = "30"
    else
      min = 0
      display_min = "00"
    end

    @time = Time.new(2000, 1, 1, hour, min, 0, +0)
    @todays_muscle_groups = Schedule.where({date: DateTime.now, time: Time.new(2000, 01, 01, hour, min)})
    
    # Need to grab previous half hours 
    if hour > 0
      if min == 0
        @today_previous_hour_muscle_groups = Schedule.where({date: DateTime.now, time: Time.new(2000, 01, 01, hour-1, 30)})
      else
        @today_previous_hour_muscle_groups = Schedule.where({date: DateTime.now, time: Time.new(2000, 01, 01, hour, 0)})
      end
    end
    if @today_previous_hour_muscle_groups
      @today_previous_hour_muscle_groups.each do |schedule|
        schedule.muscle_groups.each do |muscle|
          @workouts[muscle.muscle] += 1
        end
      end
    end

    if @todays_muscle_groups
      @todays_muscle_groups.each do |schedule|
        schedule.muscle_groups.each do |muscle|
          @workouts[muscle.muscle] += 1
        end
      end
    end

    @display_time = (hour + 5).to_s + ":" + display_min
    @display_date = Time.now.strftime("%d/%m/%Y")
  end


  # GET /gyms
  # GET /gyms.json
  def index
    @gyms = Gym.all
  end

  # GET /gyms/1
  # GET /gyms/1.json
  def show
    @gym_schedules = @gym.schedules
    @today = Time.now.strftime("%Y-%m-%d")
    @todays_schedule = @gym_schedules.select{ |day| day.date.to_s==@today }
  end

  # GET /gyms/new
  def new
    @gym = Gym.new
  end

  # GET /gyms/1/edit
  def edit
  end

  # POST /gyms
  # POST /gyms.json
  def create
    @gym = Gym.new(gym_params)

    respond_to do |format|
      if @gym.save
        format.html { redirect_to @gym, notice: 'Gym was successfully created.' }
        format.json { render :show, status: :created, location: @gym }
      else
        format.html { render :new }
        format.json { render json: @gym.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /gyms/1
  # PATCH/PUT /gyms/1.json
  def update
    respond_to do |format|
      if @gym.update(gym_params)
        format.html { redirect_to @gym, notice: 'Gym was successfully updated.' }
        format.json { render :show, status: :ok, location: @gym }
      else
        format.html { render :edit }
        format.json { render json: @gym.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /gyms/1
  # DELETE /gyms/1.json
  def destroy
    @gym.destroy
    respond_to do |format|
      format.html { redirect_to gyms_url, notice: 'Gym was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_gym
      @gym = Gym.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def gym_params
      params.require(:gym).permit(:name, :address)
    end
end
