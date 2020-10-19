class Movie < ApplicationRecord

  has_many :shows

  validates :name, presence: true

  def self.dropdown_list
    all.collect{|movie| [movie.name, movie.id]}
  end

end
