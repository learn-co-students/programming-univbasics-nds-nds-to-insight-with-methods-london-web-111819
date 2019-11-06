require 'directors_database'
require 'pp'

# Write a method that, given an NDS creates a new Hash
# The return value should be like:
#
# { directorOne => allTheMoneyTheyMade, ... }

def directors_totals(nds)

  i = 0
  number_of_directors = nds.length

  result = {}
  gross_movie_income = 0


  until i == number_of_directors do

    j = 0
    number_of_movies = nds[i][:movies].length

    until j == number_of_movies do

      gross_movie_income += nds[i][:movies][j][:worldwide_gross]
      j += 1

    end

    result[(nds[i][:name])] = gross_movie_income
    gross_movie_income = 0
    i += 1
  end

  p result


  # what was already written is just underneath
  #result = {}
  #nil


end

# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input
def gross_for_director(director_data)


 p directors_totals(directors_database)[director_data[:name]]


end
