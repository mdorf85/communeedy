class Hood < ActiveRecord::Base
	has_many :needs
	has_many :users

	require 'Cities'
end
