class Tip < ApplicationRecord
  belongs_to :user, optional: true
  has_rich_text :content

  enum :best_time, [
    :morning,
    :afternoon,
    :evening,
    :night
  ]

  validates :best_time, presence: true
  validates :title, :content, presence: true
end
