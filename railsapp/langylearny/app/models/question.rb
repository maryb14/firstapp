class Question < ActiveRecord::Base
	validates :content, presence: true
	belongs_to :category
end