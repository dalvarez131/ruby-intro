class Person < ActiveRecord::Base
  include USGeography

  validates :first_name, :last_name, { :presence => true }

end
