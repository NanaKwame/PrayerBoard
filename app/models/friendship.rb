class Friendship < ActiveRecord::Base
	belongs_to :user, foreign_key: "to_id"

	def owner
		return User.find(self.from_id)
	end

	def self.getRequests (user)
		return Friendship.where(:to_id => user.id, :status => "Pending") || []
	end
end