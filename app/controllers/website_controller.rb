class WebsiteController < ApplicationController
  def index
    if request.xhr?
      render :json => {:partial => render_to_string(:partial => 'website/index')}
    else
      render 'website/_index'
    end
  end

  def about
      render :json => {:partial => render_to_string(:partial => 'website/about')}
  end

  def contact
        render :json => {'thing' => "contact"}

  end

  def projects
        render :json => {'thing' => "projects"}

  end

end
