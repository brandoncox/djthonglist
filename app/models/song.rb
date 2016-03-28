class Song < ActiveRecord::Base

	def self.search(params)
		self.where("title LIKE ? OR artist LIKE ?", "%#{params}%", "%#{params}%")
	end
end
