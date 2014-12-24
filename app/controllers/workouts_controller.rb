class WorkoutsController < ApplicationController
  before_action :find_workout, only: [:show, :edit, :update, :destory]
  
  def index
    @workouts = Workout.all.order(created_at: :desc)
  end
  
  def show
  end

  def new
    @workout = Workout.new
  end

  def create
    @workout = Workout.new(workout_params)
    if @workout.save
      redirect_to @workout
    else
      render 'new'
    end
  end
  
  def edit
  end
  
  def update
  end
  
  def destory
  end
  
  private
    def workout_params
      params.require(:workout).permit(:date, :workout, :mood, :length)
    end
    
    def find_workout
      @workout = Workout.find(params[:id])
    end
end
