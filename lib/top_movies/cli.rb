class TopMovies::CLI 
  
  def call 
    top_movies
    menu
    goodbye
  end
  
  def top_movies 
    puts "Here are today's top rated movies:"
    @movies = TopMovies::Movie.all
    @movies.each.with_index(1) do |movie, i| 
      puts "#{i}. #{movie.title} - #{movie.rating}" 
    end
  end 
  
  def menu 
    input = nil 
    while input != "exit"
     puts "Enter the number of the movie you'd like more info on or type 'list' to see the movies again or type 'exit':"
    input = gets.strip.downcase 
      
      if input.to_i > 0 
        the_movie = @movies[input.to_i-1]
        puts "#{the_movie.title} - #{the_movie.rating}"
      elsif "list"
        top_movies
      else 
        puts "Not sure what you want. Please type 'list' or 'exit'."
      end
    end
  end
  
  def goodbye 
    puts "Check back in tomorrow for an update on today's hottest movies in theater!"
  end
  
end