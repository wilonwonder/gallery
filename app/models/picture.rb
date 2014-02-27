class Picture < ActiveRecord::Base
  belongs_to :category
  has_many :likes
  has_many :comments

  has_attached_file :photo

  validates_attachment_presence :photo
  validates_attachment_size :photo, :less_than => 5.megabytes
  validates_attachment_content_type :photo, :content_type => ['image/jpeg', 'image/png']
end