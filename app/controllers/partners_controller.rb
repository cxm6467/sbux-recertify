class PartnersController < ApplicationController
	def new
		@partner = Partner.new
	end

	def create
		Partner.create(partner_params)
   		redirect_to user_path(current_user)
	end

	private

	def partner_params
		params.require(:partner).permit(:first_name, :last_name)
	end
end
