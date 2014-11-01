class Deploy < ActiveRecord::Base
  belongs_to :project
  belongs_to :requestor, :class_name => 'User'
  has_many :deploy_events
  has_many :deploy_queries
  has_many :deploy_commands
end
