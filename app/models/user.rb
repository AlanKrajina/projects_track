class User < ActiveRecord::Base
  has_secure_password
  has_many :projects
  has_many :user_scores
  has_many :scores, through: :user_scores
  
  def slug
    username.downcase.gsub(" ","-")
  end

  def self.find_by_slug(slug)
    User.all.find{|user| user.slug == slug}
  end
  
end