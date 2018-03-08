class Artist < ApplicationRecord
  has_many :ablums
  has_many :songs
end