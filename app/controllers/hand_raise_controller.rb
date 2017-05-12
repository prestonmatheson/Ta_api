class HandRaiseController < ApplicationController
  skip_before_action :verify_authenticity_token, only: [:create, :update]
	def create
	end

	def update
	end
	
end