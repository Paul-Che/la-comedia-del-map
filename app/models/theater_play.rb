class TheaterPlay < ActiveRecord::Base
  belongs_to :play
  belongs_to :theater
end
