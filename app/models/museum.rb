class Museum < ActiveRecord::Base
  has_many :paintings
  has_many :artists, through: :paintings

    def self.search_for(query)
    where('name LIKE :query', query: "%#{query}%") 
  end
end
