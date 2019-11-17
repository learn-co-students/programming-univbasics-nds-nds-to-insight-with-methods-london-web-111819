  
r$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'
require 'pry'

def directors_totals(nds)
  
  hash_names_totals = {}
  directors_database.each do |director|
    total = 0 
    director[:movies].each do |movie|
      total +=  movie[:worldwide_gross]
    end
   hash_names_totals[director[:name]] = total
  end
 hash_names_totals
end