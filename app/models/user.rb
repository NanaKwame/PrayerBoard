class User < ActiveRecord::Base
  has_many :group, foreign_key: "owner_id", dependent: :destroy
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_attached_file :image, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
  has_many :praises, as: :praise_report
  has_many :prayer_requests, as: :prayer
  has_many :verses, as: :bible_verse
  has_many :friendship, foreign_key: "to_id"
  has_many :events, as: :event_set
  belongs_to :event
  has_many :likes, foreign_key: "owner_id", dependent: :destroy
  has_many :comments, foreign_key: "owner_id", dependent: :destroy

  def myposts
    verses= self.verses.to_a
    prayer= self.prayer_requests.to_a
    praise= self.praises.to_a
    verses.concat(prayer).concat(praise)
    return verses
  end

  def mygroups
    groups = Group.all
    mygroups = Array.new
    groups.each do |ele|
      if ele.user == self or ele.getMembers.include? self
        mygroups.push(ele)
      end
    end
    return mygroups
  end
end
