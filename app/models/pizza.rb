class Pizza < ApplicationRecord
	has_many :votes
	validates :name, :ingredients, :image_url, presence: true
end
