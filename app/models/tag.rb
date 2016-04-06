class Tag < ActiveRecord::Base
	has_many :taggings, dependent: :destroy
	has_many :posts, through: :taggings

	def self.counts
		Tag.select("name, count(taggings.tag_id) as count").joins(:taggings).group("taggings.tag_id, name")
	end
end