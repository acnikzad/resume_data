class Api::StudentsController < ApplicationController
  def index
    @students = Student.all
    render 'student.json.jb'
  end
  def show
    student_id = params[:id]
    @student = Student.find_by(id: student_id)
    render 'show.json.jb'
  end
end
