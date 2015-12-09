class Job < ActiveRecord::Base
  extend Enumerize
  STATUSES = [:draft, :published, :archived]
  enumerize :state, in: STATUSES
  belongs_to :organization
  belongs_to :author, foreign_key: :user_id, class_name: "User"

  validates :author, presence: true
end
