class User < ActiveRecord::Base
  has_many :events
  validates :username, uniqueness: true, length: { minimum: 3, maximum: 15 }
end
