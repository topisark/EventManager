class Event < ActiveRecord::Base
  belongs_to :user
  belongs_to :event_type
  has_many :participations
  validates :name, :time, presence: true
end
