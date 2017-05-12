class HandRaiseController < ApplicationController
  skip_before_action :verify_authenticity_token, only: [:create, :update]
	def create
    puts params
    # if text != nil
    #   Ta_Api.ta_post(text) 
    # else
    #   raise "waffles. Show Us What You GOTTTTTT"
    # end
	end

	def update
	end
	
  private
    # def verify_authenticity_token key
    #   key == AUTH_KEY ? true : false
    # end
end