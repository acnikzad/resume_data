class Api::SkillsController < ApplicationController
end


  def index
    @experiences = Experience.all
    render 'index.json.jb'
  end

  def show
    experience_id = params [:id]
    @experience = Experience.find_by(id:experience_id)
    render 'show.json.jb'
  end

  def create 
    @experience = Experience.new(
      start_date: params[:start_date],
      end_date: params[:end_date],
      job_title: params[:job_title],
      company: params[:comapny],
      details: params[:details]
      )
    if experience.save
      render 'show.json.jb'
      else
        render json: {errors: @experience.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def update 
    @experience = Experience.find_by(id: params[:id])

    @experience.update(
      start_date: params[:start_date] || @experience.start_date,
      end_date: params[:end_date] || @experience.end_date,
      job_title: params[:job_title] || @experience.job_title,
      company: params[:company] || @experience.company,
      details: params[:details] || @experience.details,
      )
    render 'show.json.jb'
  end