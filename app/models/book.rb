class Book < ApplicationRecord
	belongs_to :user
	validates :title, presence: { message: 'error' }, length: { maximum: 200 }
  	validates :body, presence: { message: 'error' }, length: { maximum: 200 }
end
