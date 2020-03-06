class Like < ApplicationRecord
	belongs_to :liker, :polymorphic => true
end
