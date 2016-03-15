class Play < ActiveRecord::Base
  has_many :actors
  has_many :theater_plays
  has_many :theaters, through: :theater_plays

  # Validations
  validates :start_date, presence: true
  validates :end_date, presence: true
  validates :synopsys, presence: true
  validates :title, presence: true, uniqueness: true
end
