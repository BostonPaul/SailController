require File.join(Rails.root, 'lib', 'authenticated_system.rb')

class ApplicationController < ActionController::Base
  protect_from_forgery
end
