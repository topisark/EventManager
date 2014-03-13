class Event < ActiveRecord::Base
  belongs_to :user
  validates :name, :time, presence: true
end
