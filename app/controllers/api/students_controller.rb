class Api::StudentsController < ApplicationController
  def index
    @students = Student.all
    render 'index.json.jb'
  end
  def show
    student_id = params[:id]
    @student = Student.find_by(id: student_id)
    render 'show.json.jb'
  end
  def create
    @student = Student.new(
      first_name: params[:first_name],
      last_name: params[:last_name],
      email: params[:email],
      phone: params[:phone],
      bio: params[:bio],
      linkedin: params[:linkedin],
      twitter: params[:twitter],
      website: params[:website],
      resume: params[:resume],
      github: params[:github],
      photo: params[:photo],
      password: params[:password],
      password_confirmation: params[:password_confirmation]
    )
    @student.save
    render 'show.json.jb'
  end
  def update
    student_id = params[:id]
    @student = Student.find_by(id: student_id)
    @student.first_name = params[:first_name] || @student.first_name
    @student.last_name = params[:last_name] || @student.last_name
    @student.email = params[:email] || @student.email
    @student.phone = params[:phone] || @student.phone
    @student.bio = params[:bio] || @student.bio
    @student.linkedin = params[:linkedin] || @student.linkedin
    @student.twitter = params[:twitter] || @student.twitter
    @student.website = params[:website] || @student.website
    @student.resume = params[:resume] || @student.resume
    @student.github = params[:github] || @student.github
    @student.photo = params[:photo] || @student.photo
    @student.password = params[:password] || @student.password
    @student.password_confirmation = params[:password_confirmation] || @student.password_confirmation,

    if user.save
      render json: { message: "Student created successfully" }, status: :created
    else
      render json: { errors: student.errors.full_messages }, status: :bad_request
    end
    
    # @student.save
    # render 'show.json.jb'
  end
  def destroy
    @student = Student.find_by(id: params[:id])
    @student.destroy
    render json: {message: "Student destroyed"}
  end
end
