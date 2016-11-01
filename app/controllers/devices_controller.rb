class DevicesController < ApplicationController
	def show
		@device = Device.find(params[:id])
	end
	def destroy
		Device.find(params[:id]).destroy
		redirect_to :back
	end
end
