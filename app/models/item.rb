class Item < ActiveRecord::Base
  belongs_to :category
  validates :title, presence: true, length: {minimum: 5}
  validates :body, presence: true
  validates_presence_of :category

  has_attached_file :photo
end
