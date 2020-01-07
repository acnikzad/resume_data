class Api::EducationController < ApplicationController
  def index
    @education = Education.all
    render 'index.json.jb'
  end
  def create
    @education = Education.new(
      start_date: params[:start_date],
      end_date: params[:end_date],
      degree: params[:degree],
      university: params[:university],
      details: params[:details]
    )
    @education.save
    render 'show.json.jb'
  end
end
