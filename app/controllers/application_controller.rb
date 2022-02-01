class ApplicationController < ActionController::Base
  # If your controllers have a current_user method,
  # you can easily track who is responsible for changes by adding a controller callback.
  before_action :set_paper_trail_whodunnit
end
