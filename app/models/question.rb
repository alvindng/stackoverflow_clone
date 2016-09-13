class Question < ActiveRecord::Base
  belongs_to :user
  has_many :answers
  has_many :votes, as: votable
  validates :content, presence: true
end
