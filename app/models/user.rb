class User < ActiveRecord::Base
	has_many :needs
	has_one :hood

	def self.create_with_omniauth(auth)
		# binding.pry
		create! do |user|
	      user.provider = auth["provider"]
	      user.uid = auth["uid"]
	      user.name = auth["info"]["name"]
	      user.email = auth["info"]["email"]
	      user.image = auth["info"]["image"]
	    end
  end
end
