class User < ActiveRecord::Base
  has_many :deploys
end
