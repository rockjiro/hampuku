class Text < ActiveRecord::Base
  belongs_to :book
  validates :question, presence: true
  validates :answer, presence: true
end
