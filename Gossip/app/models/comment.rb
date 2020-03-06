class Comment < ApplicationRecord
	belongs_to :user
	belongs_to :GorC, :polymorphic => true
	has_many :likes, :as => :liker
	has_many :comments, :as => :GorC
end
