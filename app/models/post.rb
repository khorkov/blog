class Post < ApplicationRecord
  extend FriendlyId
  friendly_id :title, use: :slugged
  has_attached_file :image, styles: { large: '740x280>', medium: '300x300>', thumb: '183x183#' }
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
  validates :title, presence: true, length: { in: 3..20  }, uniqueness: true
end
