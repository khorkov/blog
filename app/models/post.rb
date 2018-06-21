class Post < ApplicationRecord
  extend FriendlyId
  friendly_id :title, use: :slugged
  has_attached_file :image, styles: { large: '740x280>', medium: '300x300>', thumb: '183x183#' }
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
  validates :title, presence: true, length: { in: 3..50 }, uniqueness: true
  has_many :taggings, dependent: :destroy

  has_many   :taggings, dependent: :destroy
  has_many   :tags, through: :taggings
  belongs_to :category

  def all_tags
    tags.map(&:name).join(', ')
  end

  def all_tags=(names)
    self.tags = names.split(',').map do |name|
      Tag.where(name: name.strip).first_or_create!
    end
  end
end
