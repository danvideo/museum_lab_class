class Artist < ActiveRecord::Base
  has_many :paintings

  def self.search_for(query)
    where('name LIKE :query', query: "%#{query}%") 
  end
end
