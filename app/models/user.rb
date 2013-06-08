class User < ActiveRecord::Base
  attr_accessible :Name, :email

  has_many :micro_posts
end
