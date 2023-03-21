class ApplicationController < ActionController::Base
  require "openai"
  require 'dotenv'
  Dotenv.load
end
