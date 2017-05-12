class HandRaiseController < ApplicationController
  skip_before_action :verify_authenticity_token, only: [:create, :update]
	def create

	end

	def update
	end
	
  private
    def verify_authenticity_token key
      if key == AUTH_KEY
        return true
      else
        return false
      end
    end
end