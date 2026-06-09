class BountyClaim < ApplicationRecord
  belongs_to :bounty
  belongs_to :user
  belongs_to :github_pr

  validates :bounty, presence: true
  validates :user, presence: true
  validates :github_pr, presence: true
end