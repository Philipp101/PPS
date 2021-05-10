class SkillsController < ApplicationController

  def index
    @skills = Skill.all
  end

  def new
    @skill = Skill.new
  end

  def create
    @skill = Skill.new(skill_params)
    if @skill.save
      flash.notice = "New skill created!"
      redirect_to root_path
    else
      render :new
    end
  end

  def edit
    @skill = Skill.find(params[:id])
  end

  def update
    skill = Skill.find(params[:id])
    skill.update(skill_params)
    redirect_to skill_path
  end

  def destroy
    skill = Skill.find(params[:id])
    skill.destroy
    redirect_to skill_path
  end

  private

  def skill_params
    params.require(:skill).permit(:content, :level, :kind)
  end
end
