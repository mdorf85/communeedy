class Hood < ActiveRecord::Base
	has_many :needs
	belongs_to :user
end
