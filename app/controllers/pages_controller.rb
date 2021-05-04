class PagesController < ApplicationController
  def home
    @steps = Step.all
    @skills = Skill.all
  end

  def new
    @step = Step.new
  end

  def create
    @step = Step.new(step_params)
    if @step.save
      flash.notice = "Career step created!"
      redirect_to step_path
    else
      render :new
    end
  end

  def edit
    @step = Step.find(params[:id])
  end

  def update
    step = Step.find(params[:id])
    step.update(step_params)
    redirect_to step_path
  end

  def destroy
    step = Step.find(params[:id])
    step.destroy
    redirect_to step_path
  end

end
