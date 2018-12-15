class Task < ActiveRecord::Base
  belongs_to :products, :reviews
  validates :description, :presence => true
end
