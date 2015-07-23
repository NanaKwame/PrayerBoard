class Event < ActiveRecord::Base
	belongs_to :event_set, polymorphic: true
	has_many :users, through: :request
end
