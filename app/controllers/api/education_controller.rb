class Api::EducationController < ApplicationController
  def index
    @education = Education.all
    render 'index.json.jb'
  end
end
