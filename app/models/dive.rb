class Dive < ActiveRecord::Base
  validates :name, presence: true
  validates :latitude, presence: true, numericality: true
  validates :longitude, presence: true, numericality: true
  validates :time, presence: true

  belongs_to :user
end
