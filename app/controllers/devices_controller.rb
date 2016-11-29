require 'socket'
require 'twilio-ruby'

class DevicesController < ApplicationController
	def show
		@device = Device.find(params[:id])
	end
	def destroy
		Device.find(params[:id]).destroy
		redirect_to :back
	end

	def ping
		@client = Twilio::REST::Client.new 'AC690666cb76b64f669245f298b2c17376', '3ac8f63ee33dfbac5c33cfd56595ee56'

		@client.account.messages.create({
			:to => '+14086665994',
			:from => '+14154668424',
			:body => 'alarm',
			})

	end
end
