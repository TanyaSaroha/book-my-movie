class Movie < ApplicationRecord

  def self.dropdown_list
    all.collect{|movie| [movie.name, movie.id]}
  end

end
