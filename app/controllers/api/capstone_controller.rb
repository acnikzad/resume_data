class Api::CapstoneController < ApplicationController
  def index
    @capstones = Capstone.all
    render 'index.json.jb'
  end
end
