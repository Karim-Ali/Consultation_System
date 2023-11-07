class DrugInfoController < ApplicationController
require 'httparty'

  def search
    # Replace 'YOUR_API_KEY' with your actual OpenFDA API key if required
    #api_key = 'YOUR_API_KEY'
    #query = params[:query] # Get the user's search query
	
	@drug = params[:drug_desc]

    # Make a request to the OpenFDA API
    response = HTTParty.get("https://api.fda.gov/drug/enforcement.json?search=product_description:#{@drug}&limit=10")

    data = JSON.parse(response.body)
    @results = data['results']
    render json: @results
	
  end
end
