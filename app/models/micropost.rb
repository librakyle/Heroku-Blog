class Micropost < ActiveRecord::Base
  attr_accessible :content
  validates :user_id, presence: true
  belongs_to :user

  validates :content, presence: true, length: { maximum: 140 }

  default_scope order: 'microposts.created_at DESC'
end
