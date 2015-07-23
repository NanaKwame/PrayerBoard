class Group < ActiveRecord::Base
  belongs_to :user, foreign_key: "owner_id"
    has_attached_file :image, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
    has_many :praises, as: :praise_report
    has_many :prayer_requests, as: :prayer
    has_many :verses, as: :bible_verse
    has_many :events, as: :event_set
    has_many :membership

    def allposts
      verses= self.verses.to_a
      prayer= self.prayer_requests.to_a
      praise= self.praises.to_a
      verses.concat(prayer).concat(praise)
      return verses
    end

    def getMembers
      return self.membership
    end

    def owner
      return self.user
    end
end
