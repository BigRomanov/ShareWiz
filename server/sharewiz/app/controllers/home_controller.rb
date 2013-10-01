class HomeController < ApplicationController
  before_filter :authenticate_user!
  
  def index
    @message="This is dynamic stuff"
  end
end
