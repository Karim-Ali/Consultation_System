class ConsultationRequestsController < ApplicationController
  before_action :set_patient, only: [:create]
  
  def create
    @consultation_request = @patient.consultation_requests.new(consultation_request_params)

    if @consultation_request.save
      render json: @consultation_request, status: :created
    else
      render json: @consultation_request.errors, status: :unprocessable_entity
    end
  end
  
  private

  def set_patient
	@patient = Patient.find(params[:patient_id])
  end

  def consultation_request_params
    params.require(:consultation_request).permit(:request_text, :creation_date)
  end
end
