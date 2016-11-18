require 'socket'
class DevicesController < ApplicationController
	def show
		@device = Device.find(params[:id])
	end
	def destroy
		Device.find(params[:id]).destroy
		redirect_to :back
	end

	def ping
		redirect_to :back
		device = Device.find(params[:id])
		message = params[:message]
		hostname = device.ipauth
		port = 5293
		begin
			streamSock = TCPSocket.new(hostname, port)
			streamSock.write(message + "\r")
			streamSock.close()
		rescue
			return
		end

	end
end
