class UserScore < ActiveRecord::Base
  belongs_to :user
  belongs_to :score
end
