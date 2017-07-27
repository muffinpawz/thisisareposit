class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  include DeviseWhitelist
  include SetSource
  include CurrentUserCheck
  include SetTitleName
  
  before_action :set_copyright
  
  def set_copyright
    @copyright = DevcanpViewTool::Renderer.copyright "Riggy Riggerson", "I'm gonna sue you"
  end
end 

