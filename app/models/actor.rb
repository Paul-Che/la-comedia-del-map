class Actor < ActiveRecord::Base
  belongs_to :play

  # Validations
  validates :first_name, presence: true
  validates :last_name, presence: true

  validates :play_title, presence: true
end
