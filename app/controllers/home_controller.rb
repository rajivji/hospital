class HomeController < ApplicationController
	before_action :authenticate_user!
  def index
  	@patient = Patient.new
  end

  def create_patient
  	
  end
end
