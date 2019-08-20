module DefaultPageContent
  extend ActiveSupport::Concern

  included do
    before_action :set_page_defaults
  end

  def set_page_defaults
    @page_title = "My Portfolio Site | Alec Keeter's website"
    @seo_keywords = "Alec Keeter Portfolio"
  end
end