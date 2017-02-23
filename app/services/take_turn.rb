class TakeTurn
  attr_reader :player, :match, :column, :errors

  def initialize(player:, column:)
    @player = player
    @match  = player.match
    @column = column
  end

  def execute
    match.play(player_id: player.id, column: column)
    Turn.create!(match_id: match.id, player_id: player.id, column: column)
  rescue => e
    @error = e.message
  ensure
    return self
  end
end
