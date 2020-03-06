class Gossipe < ApplicationRecord
	belongs_to :user
	has_and_belongs_to_many :tags
	has_many :comments, :as => :GorC
	has_many :likes, :as => :liker
end
