class Recipe < ActiveRecord::Base
	belongs_to :user
	has_many :comments
	validates :name, :presence => true, length: { minimum: 3 }
	validates :ingredients, :presence => true
	validates :instructions, :presence => true


	# It returns the places whose names contain one or more words that form the query
  def self.search(query)
     #where(:title, query) -> This would return an exact match of the query
    where("LOWER(name) like ?", "%#{query}%") 
  end

  def avg_rating
    rating_vals = self.comments.map do |c|
        c.rating[0].to_i
    end

    rating_vals.sum.to_f / rating_vals.length
  end


end
