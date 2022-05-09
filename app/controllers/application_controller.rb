class ApplicationController < ActionController::Base
    include ApplicationHelper

    private

  def set_sucessURL
    gon.url = ENV['sucessURL']
  end
end
