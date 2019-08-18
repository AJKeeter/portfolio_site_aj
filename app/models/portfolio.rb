class Portfolio < ApplicationRecord
  validates_presence_of :title, :body, :main_image, :thumb_image

  # CLASS METHOD call angular in the index method of the controller class to display only portfolios that deal with angular
  def self.angular
    where(subtitle: 'Angular')
  end
  # SCOPE Call :ruby_on_rails_portfolio_items within the controller, in the class method index to show only portfolios that deal with ruby
  scope :ruby_on_rails_portfolio_items, -> { where(subtitle: 'Ruby on Rails') }

  after_initialize :set_defaults

  def set_defaults
    self.main_image ||= "http://placehold.it/600x400"
    self.thumb_image ||= "http://placehold.it/350x200"
  end
end
