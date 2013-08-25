class Comment < ActiveRecord::Base
  belongs_to :blog
  attr_accessible :replay_by, :replay_content

  validates_presence_of :replay_by, :replay_content
end
