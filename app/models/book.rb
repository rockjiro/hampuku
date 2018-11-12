class Book < ActiveRecord::Base
  belongs_to :user
  has_many :texts
  validates :name, presence: true
end
