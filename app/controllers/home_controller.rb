class HomeController < ApplicationController
	def newsfeed
		@mygroups = current_user.mygroups() || []
		@groupposts = []
		@mygroups.each { |e|  
			@groupposts.concat(e.allposts)
		}
		@myfiends = current_user.friendship
		@myfriendsposts = []
		@myfiends.each { |e|  
			@myfriendsposts.concat(e.user.myposts())
		}
		puts "blahhhh"
		puts @myfriends.inspect
		@allmyposts = current_user.myposts() || []
		@everyposts = @allmyposts.concat(@groupposts)
		@everyposts = @everyposts.concat(@myfriendsposts)
		@everyposts = @everyposts.sort_by &:updated_at
	end

	def personal
		@allmyposts = current_user.myposts() || []
		@allmyposts = @allmyposts.sort_by &:updated_at
	end

	def groups
		@mygroups = current_user.mygroups() || []
		@groupposts = []
		@mygroups.each { |e|  
			@groupposts.concat(e.allposts)
		}
		@groupposts = @groupposts.sort_by &:updated_at
	end
end
