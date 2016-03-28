class Song < ActiveRecord::Base

	def self.search(params)
		self.where("lower(title) LIKE ? OR lower(artist) LIKE ?", "%#{params.downcase}%", "%#{params.downcase}%")
	end
end
