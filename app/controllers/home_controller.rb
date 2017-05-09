class HomeController < ApplicationController
  def index
  end
  
flash.each do |key,value|
  value
end
end
