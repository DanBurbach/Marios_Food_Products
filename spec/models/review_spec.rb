class Reviews < ActiveRecord::Base
  validates :author, :presence => true
  validates :content_body, :presence => true
  validates :rating, :presence => true
  validates :recommended, :presence => true
end
