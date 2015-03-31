class Category < ActiveRecord::Base
	validates :name, presence: true
	validates :content, presence: true
	has_many :questions
	has_many :images

	def self.grammar_categ
		where(is_grammar_categ: true)
	end

	def self.vocabulary_categ
		where(is_grammar_categ: false)
	end
end