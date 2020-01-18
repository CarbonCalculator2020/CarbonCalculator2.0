class ResponsesController < ApplicationController
	def new
	end

	def show
    	@response = Response.find(params[:id])
  	end

	def create
		@response = Response.new(params[:reponse])
 
  		@response.save
  		redirect_to @response
	end
	private
		def reponse_params
			params.require(:response).permit(:title, :text)
		end
end
