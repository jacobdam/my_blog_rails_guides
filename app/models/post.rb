class Post < ActiveRecord::Base
  has_many :comments
  belongs_to :author, class_name: 'User'

  validates :title, presence: true, length: { minimum: 10 }
  validates :content, presence: true
end
