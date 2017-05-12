class HandRaiseController < ApplicationController
  skip_before_action :verify_authenticity_token, only: [:create, :update]
	def create
        Ta_Api.ta_post(params) 
	end

	def update
        @raised_hand = HandRaise.find(params[:id]) unless HandRaise == nil
        Ta_Api.ta_patch(params[:id], params[:resolution])
	end
end