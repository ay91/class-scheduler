class Slot < ApplicationRecord
  belongs_to :course

  enum day: [:M, :T, :W, :TH, :F]
end
