class Api::SkillsController < ApplicationController

  def index
    @skills = Skill.all
    render 'index.json.jb'
  end

  def show
    the_id = params[:id]
    @skill = Skill.find_by(id:the_id)
    render 'show.json.jb'
  end

  def create 
    @skill = Skill.new(
    skill_name: params[:skill_name],
    student_id: params[:student_id]
      )
    @skill.save!
    render 'show.json.jb'
  end

  def update 
    @skill = Skill.find_by(id: params[:id])

    @skill.update(
      skill_name: params[:skill_name] || @skill.skill_name,
      student_id: params[:student_id] || @skill.student_id
      )
    render 'show.json.jb'
  end

  def destroy
    @skill = Skill.find_by(id: params[:id])
    @skill.destroy
    render 'destroy.json.jb'
  end
end