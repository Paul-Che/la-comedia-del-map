class Play < ActiveRecord::Base
  has_many :actors

  # Validations
  validates :start_date, presence: true
  validates :end_date, presence: true
  validates :synopsys, presence: true
  validates :title, presence: true, uniqueness: true
end
