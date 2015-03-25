class GrammarCategory < ActiveRecord::Base
	validates :name, presence: true
	validates :content, presence: true
	has_many :questions
end