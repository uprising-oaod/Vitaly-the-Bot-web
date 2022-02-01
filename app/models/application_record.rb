class ApplicationRecord < ActiveRecord::Base
  primary_abstract_class
  
  # Add has_paper_trail to the models you want to track
  has_paper_trail
end
