class ProjectsController < ApplicationController
  def index
  end

  def show
    loadpartial = params[:key].split(" ").join("").downcase
    render :json => {:partial => render_to_string(:partial => "projects/#{loadpartial}")}
  end

end
