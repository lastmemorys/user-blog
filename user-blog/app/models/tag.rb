class Tag < ActiveRecord::Base
  belongs_to :blog
  attr_accessible :content
end
