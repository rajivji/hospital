class HomeController < ApplicationController
	before_action :authenticate_user!
	before_action :set_member, only: [:view_patient]
	def index
		@patient = Patient.new
	end

	def create_patient
		@patient = Patient.new(patient_params)
		respond_to do |format|
			if @patient.save
				format.html { redirect_to view_patient_path(@patient), notice: 'Priscription was successfully created.' }
				format.json { render :index, status: :created, location: @patient }
			else
				format.html { redirect_to root_path, notice: 'There is problem to create priscription.' }
				format.json { render json: @patient.errors, status: :unprocessable_entity }
			end
		end
	end
	def view_patient

	end

	private

	def set_member
		@patient = Patient.find(params[:id])
	end
	def patient_params
		params.fetch(:patient, {}).permit(:name,:age,:weignt,:date_selected,:phone,:priscription)
	end
end
