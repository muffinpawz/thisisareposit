module SetTitleName
  extend ActiveSupport::Concern
  
  included do
    before_filter :set_title
  end
  
  def set_title
    @page_title = "Muffin's Portfolio Collection | Devcamp Portfolio"
    @seo_keywords = "*Screams*"
  end
end