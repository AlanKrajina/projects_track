class Score < ActiveRecord::Base
  has_many :user_scores
  has_many :users, through: :user_scores
end