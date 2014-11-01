class Project < ActiveRecord::Base
  has_many :deploys
end
