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
    render :json => {:partial => render_to_string(:partial => 'website/contact')}
  end

  def projects
    render :json => {:partial => render_to_string(:partial => 'projects/index')}
  end

  def download
    send_file "#{Rails.root}/public/assets/ResumeJustinYee.pdf", :type=>"application/pdf", :x_sendfile=>true
  end

end
