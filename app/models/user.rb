class User < ActiveRecord::Base
  has_secure_password
  has_many :projects
  has_many :user_scores
  has_many :scores, through: :user_scores
end