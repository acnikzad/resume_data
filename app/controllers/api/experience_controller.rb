class Api::ExperienceController < ApplicationController

  def index
    @experiences = Experience.all
    render 'index.json.jb'
  end

  def show
    the_id = params[:id]
    @experience = Experience.find_by(id:the_id)
    render 'show.json.jb'
  end

  def create 
    @experience = Experience.new(
      start_date: params[:start_date],
      end_date: params[:end_date],
      job_title: params[:job_title],
      company: params[:company],
      details: params[:details],
      student_id: params[:student_id]
      )
    @experience.save
    render 'show.json.jb'
  end

  def update
    the_id = params[:id]
    @experience = Experience.find_by(id: the_id)
    @experience.start_date = params[:start_date] || @experience.start_date
    @experience.end_date = params[:end_date] || @experience.end_date
    @experience.job_title = params[:job_title] || @experience.job_title
    @experience.company = params[:company] || @experience.company
    @experience.details = params[:details] || @experience.details
    @experience.student_id = params[:student_id] || @experience.student_id
    @experience.save!
    render 'show.json.jb'
  end

  def destroy
    @experiece = Experience.find_by(id: params[:id])
    @experience.destroy
    render 'destroy.json.jb'
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
end