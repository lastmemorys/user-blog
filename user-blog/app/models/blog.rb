class Blog < ActiveRecord::Base
  attr_accessible :content, :title, :tags_attributes
  has_many :comments, :dependent => :destroy
  has_many :tags
  validates_presence_of :title, :content

  accepts_nested_attributes_for :tags, :allow_destroy => true,
                                :reject_if => proc { |attrs| attrs.all? { |k, v| v.blank? } }
end
