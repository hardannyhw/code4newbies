class Video < ActiveRecord::Base
	def next
		Video.where("id > ?", id).first
	end
	
	def previous
		Video.where("id < ?", id).last
	end
end
