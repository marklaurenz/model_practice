class QuestionsController < ApplicationController
  def question_1
    # What is the most recent movie on the list that the second actor appeared in?

    # Your Ruby goes here.
    # store the second actor, then list all movies with the second actor, then order the movies, then select the most recent year


    # the_second_actors_movies = Movie.find(Actor.second.id)
    the_second_actor = Actor.second.name

    # the_second_actors_movies = Movie.where(the_second_actor)

    @most_recent_movie_for_second_actor = Movie.where( :role => the_second_actor).count
  end

  def question_2
    # Who directed the longest movie on the list?

    # Your Ruby goes here.
    # the_longest_movie_director_id = Movie.order("duration ASC").last.director_id
    # the_longest_movie = Movie.order("duration ASC").last.director_id

    # the_director = Director.find(4)

    @director_of_longest_movie = Movie.order("duration ASC").last.director.name

    # where needs a column and criteria



  end

  def question_3
    # Which director has the most movies on the list?
    # Name, max, number of movies per director .count, movies that belong to a director id

    # Your Ruby goes here.

    # 1. check all movies for a director id and keep that information
    # 2. Count the director ids for each director
    # 3. Order the director ids from most to least (couldn't figure this out, instead replace next highest count as we go through the .each do)
    # 4. Get the director's name with the most movies

    # list_of_director_ids = Movie.count.director

    the_director_with_the_most_movies = Director.new

    Director.all.each do |the_director|
      if the_director.movies.count > the_director_with_the_most_movies.movies.count
        the_director_with_the_most_movies = the_director
      end
    end

    @director_with_the_most_movies = the_director_with_the_most_movies.name
  end

  def question_4
    # Which actor has been in the most movies on the list?
    # (If there's a tie, any one of them is fine)

    # 1. Check the list of roles
    # 2. Count the number roles associated with each actor
    # 3. The actor with the most roles should have the most movies
    # roles_for_each_actor = []

    # Actor.all.each do |the_actor|
    #   count_actors_roles = the_actor.roles.count

    #   roles_for_each_actor.push(count_actors_roles)
    # end


    # @actor_with_the_most_movies = roles_for_each_actor.sort.last

    the_leader = Actor.new

    Actor.all.each do |the_actor|
     if the_actor.movies.count > the_leader.movies.count
       the_leader = the_actor
     end
   end

  @actor_with_the_most_movies = the_leader.name

    # @actor_with_the_most_movies = Actor.find(Role.count.max)
  end

  def question_5
    # This one is hard. Work on it after all your other review is complete.

    # Which actor/director pair has the most movies on the list?
    # (If there's a tie, any pair of them is fine)

    # Your Ruby goes here.

    # @actor = ???
    # @director = ???
    # @movies_together = ???
  end
end
