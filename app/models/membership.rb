class Membership < ActiveRecord::Base
	belongs_to :user, foreign_key: "member_id"
	belongs_to :group

	def self.getRequests (user)
		return Membership.where(:member_id => user.id, :status => "Pending") || []
	end
end
