class RecommendationsController < ApplicationController
  def index
    @patient = Patient.find(params[:patient_id])
    @recommendations = @patient.consultation_requests.map(&:recommendation)

    render json: @recommendations
  end
  
  def create
    @consultation_request = ConsultationRequest.find(params[:request_id])
    @recommendation = @consultation_request.recommendation.new(recommendation_params)
    if @recommendation.save
      render json: @recommendation, status: :created
    else
      render json: @recommendation.errors, status: :unprocessable_entity
    end
  end

  private

  def recommendation_params
    params.require(:recommendation).permit(:recommendation_text)
  end
end
