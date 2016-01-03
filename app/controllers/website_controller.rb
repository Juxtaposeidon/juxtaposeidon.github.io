class WebsiteController < ApplicationController
  def main
    render :json => {
      :partial => render_to_string(:partial => 'website/main')
    }
  end

  def about
    render :json => {
      :partial => render_to_string(:partial => 'website/about')
    }
  end

  def contact
        render :json => {'thing' => "contact"}

  end

  def projects
        render :json => {'thing' => "projects"}

  end

  def index
  end

end
