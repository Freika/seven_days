class Photo < ActiveRecord::Base
  dragonfly_accessor :image
  belongs_to :user
end
