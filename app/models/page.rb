class Page < ActiveRecord::Base
  extend Enumerize
  extend FriendlyId
  translates :title, :body
  friendly_id :title, use: [:slugged, :history]
  enumerize :state, in: [:draft, :published, :archived], default: :draft

  validates :title, presence: true
  validates :state, presence: true

  scope :published, -> { where(state: "published") }

  private

  def should_generate_new_friendly_id?
    changed.include? "title"
  end
end
