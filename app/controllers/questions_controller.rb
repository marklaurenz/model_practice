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
    the_longest_movie_director_id = Director.where(Movie.order("duration ASC").last.director_id)

    @director_of_longest_movie = the_longest_movie_director_id.name

  end

  def question_3
    # Which director has the most movies on the list?

    # Your Ruby goes here.

    # @director_with_the_most_movies = ???
  end

  def question_4
    # Which actor has been in the most movies on the list?
    # (If there's a tie, any one of them is fine)

    # Your Ruby goes here.

    # @actor_with_the_most_movies = ???
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
