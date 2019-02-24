class Article < ActiveRecord::Base
  validates :title, presence: true, length: { minimum: 3, maximum: 200 }
  validates :description, presence: true, length: { minimum: 10}
  validates :user_id, presence: true
  belongs_to :user
end
