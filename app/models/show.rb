class Show < ApplicationRecord
  belongs_to :movie
  belongs_to :screen

  TIMINGS = { "afternoon": "12:00pm - 3:00pm",
    "evening": "4:00pm - 7:00pm", "night": "8:00pm - 11:00pm" }
end
