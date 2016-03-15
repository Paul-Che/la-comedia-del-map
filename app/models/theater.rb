class Theater < ActiveRecord::Base
  has_many :theater_plays
  has_many :plays, through: :theater_plays
end
