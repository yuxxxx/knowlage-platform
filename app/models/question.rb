class Question < ActiveRecord::Base
  belongs_to :user
  belongs_to :category
  has_many :comments
  validates :user, presence: true
  validates :category, presence: true
end
