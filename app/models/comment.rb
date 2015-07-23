class Comment < ActiveRecord::Base
	belongs_to :post, polymorphic: true
	belongs_to :user, foreign_key: "owner_id"
end
