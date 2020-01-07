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
      details: params[:details],
      student_id: params[:student_id]
    )
    @education.save
    render 'show.json.jb'
  end
  def show
    @education = Education.find_by(id: params[:id])
    render 'show.json.jb'
  end
  def update
    @education = Education.find_by(id: params[:id])
    @education.start_date = params[:start_date] || @education.start_date
    @education.end_date = params[:end_date] || @education.end_date
    @education.degree = params[:degree] || @education.degree
    @education.university = params[:university] || @education.university
    @education.details = params[:details] || @education.details
    @education.student_id = params[:student_id] || @education.student_id
    @education.save
    render 'show.json.jb'
  end
  def destroy
    @education = Education.find_by(id: params[:id])
    @education.destroy
    render json: {message: "Education destroyed"}
  end
end
