class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  include DeviseWhitelist
  include SetSource
  include CurrentUserConcern
  include DefaultPageContent

  # before_action :set_title

  # def set_title
  #   @page_title = "My Portfolio Site | Alec Keeter's Website"
  # end

end
