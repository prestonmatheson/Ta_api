class HandRaise < ApplicationRecord
	validates_presence_of :hand_raise_id, :question, :email, :name, :slack_username
	# include Response
 #  include ExceptionHandler
end 