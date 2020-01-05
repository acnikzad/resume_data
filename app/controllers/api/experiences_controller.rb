class Api::ExperiencesController < ApplicationController

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
end