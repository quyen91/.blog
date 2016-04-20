class Post < ActiveRecord::Base
  has_and_belongs_to_many :categories
  has_many :taggings,  dependent: :destroy
  has_many :tags, through: :taggings
  validates_presence_of :title, :content

  attr_accessor :tag_names
  after_save :assign_tags

  def self.tagged_with(name)
    Tag.find_by_name!(name).posts
  end
  def list_tags
    self.tags.map(&:name).join(", ")
  end

  private
  def assign_tags
    if @tag_names
      self.tags = @tag_names.split(",").map do |name|
        # Tag.find_or_create_by_name(name)
        Tag.where(name: name.strip).first_or_create!
      end
    end
  end
  
end
