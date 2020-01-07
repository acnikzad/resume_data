class Api::CapstoneController < ApplicationController
  def index
    @capstones = Capstone.all
    render 'index.json.jb'
  end
  def create
    @capstone = Capstone.new(
      name: params[:name],
      description: params[:description],
      url: params[:url],
      screenshot: params[:screenshot]
    )
    @capstone.save
    render 'show.json.jb'
  end
end
