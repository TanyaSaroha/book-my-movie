class Show < ApplicationRecord
  belongs_to :movie
  belongs_to :screen

  has_many :bookings

  scope :filter_by_movie_id, -> (movie_id) { where movie_id: movie_id }
  scope :filter_by_time_slot, -> (timings) { where time_slot: timings }
  scope :filter_by_date, -> (date) { where date: date }

  TIMINGS = { "afternoon": "12:00pm - 3:00pm",
    "evening": "4:00pm - 7:00pm", "night": "8:00pm - 11:00pm" }
end
