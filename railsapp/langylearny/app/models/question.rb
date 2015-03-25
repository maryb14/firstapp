class Question < ActiveRecord::Base
	validates :content, presence: true
	validates :answer, presence: true
	belongs_to :grammar_category
end