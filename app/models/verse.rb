class Verse < ActiveRecord::Base
	belongs_to :bible_verse, polymorphic: true
	has_many :likes, as: :post
	has_many :comments, as: :post

	def owner
      return self.user
    end

    def group_poster
    	if self.bible_verse_type == 'Group'
    		return User.find(self.user_id)
    	end
    end

    def userHasComment (user_id)
        list = []
        self.comments.each do |comment|
            if comment.user.id == user_id
                list.push(comment)
            end
        end
        return list
    end

    def userHasLike (user_id)
        list =[]
        self.likes.each do |like|
            if like.user.id == user_id
                list.push(like)
            end
        end
        return list
    end
end
