class Movie < ActiveRecord::Base
  def Movie.create_with_title(title)
    Movie.create(title: title)
    
  end
  def self.first_movie
    Movie.first
  end

  def self.last_movie
    Movie.last
  end
  def self.movie_count
    Movie.count
  end

  def self.find_movie_with_id(id)
    Movie.find(id)
  end
  # Returns the movie with the corresponding attributes
  def self.find_movie_with_attributes (attribute={})
    Movie.find_by(attribute)
  end
  #Returns a list of movies released after 2002
  def self.find_movies_after_2002
    Movie.where("release_date > 2002")
  end
  # update a single movie
  def update_with_attributes (attribute={})
    attribute.each { |key, value| self.send("#{key}=", value) }
  end

  # update the title of all records at once
  def self.update_all_titles (title)
      Movie.update_all "title = '#{title}'"
  end

  #delete a single item
  def self.delete_by_id(id)
      Movie.destroy_by(id: id)
  end

  # delete all items at once
  def self.delete_all_movies
      Movie.destroy_all
  end

 

end