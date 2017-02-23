class Match < ActiveRecord::Base
  has_many :players
  has_many :turns

  validates_length_of :players, is: 2

  delegate :play, to: :grid

  private

  def grid
    @grid ||= CreateGrid.new(turns: turns).execute
  end
end
