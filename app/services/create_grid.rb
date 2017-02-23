class CreateGrid
  attr_reader :columns, :rows, :turns

  COLUMNS = 7
  ROWS    = 6

  def initialize(columns: COLUMNS, rows: ROWS, turns: [])
    @columns = columns
    @rows    = rows
    @turns   = turns
  end

  def execute
    grid = Grid.new(columns: columns, rows: rows)
    turns.each do |turn|
      grid.play(
        player_id: turn.player_id,
        column:    turn.column
      )
    end

    grid
  end
end
