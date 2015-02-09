class YelpApi < ActiveRecord::Base

  @@client ||= Yelp::Client.new ({
      consumer_key: Rails.application.secrets.YELP_KEY,
      consumer_secret: Rails.application.secrets.YELP_SECRET,
      token: Rails.application.secrets.YELP_TOKEN,
      token_secret: Rails.application.secrets.YELP_TOKEN_SECRET
      })

  # def self.search_venues(category, limit, lat, long)
  #   params = {
  #     limit: limit,
  #     category_filter: category,
  #     sort: 0,
  #     radius_filter: 805
  #   }
  #   coordinates = {
  #     latitude: lat,
  #     longitude: long
  #   }
  #   @@client.search_by_coordinates(coordinates, params)
  # end

  def self.search(city)
  	params = {
  		location = city
  	}
  end

end
