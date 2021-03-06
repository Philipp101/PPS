class StepsController < ApplicationController

  def index
    @steps = Step.all
  end

  def new
    @step = Step.new
  end

  def create
    @step = Step.new(step_params)
    if @step.save
      flash.notice = "Career step created!"
      redirect_to root_path
    else
      render :new
    end
  end

  def edit
    @step = Step.find(params[:id])
  end

  def update
    step = Step.find(params[:id])
    step.update (step_params)
    redirect_to step_path
  end

  def destroy
    step = Step.find(params[:id])
    step.destroy
    redirect_to step_path
  end

  private

  def step_params
    params.require(:step).permit(:title, :time_start, :time_end, :task, :institution)
  end
end
