class WebsiteController < ApplicationController
  def index
    if request.xhr?
      render :json => {:partial => render_to_string(:partial => 'website/index')}
    else
      render 'website/_index'
    end
  end

  def projects
    render :json => {:partial => render_to_string(:partial => 'projects/index')}
  end

  def resume
    render :json => {:partial => render_to_string(:partial => 'projects/index')}
    send_file "#{Rails.root}/public/assets/ResumeJustinYee.pdf", :type=>"application/pdf", :x_sendfile=>true
  end

end
