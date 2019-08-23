class Song < ApplicationRecord
  belongs_to :artist, required: true
  belongs_to :board, optional: true
end
