class Grid
  attr_reader :columns, :max_rows

  def initialize(columns:, rows:)
    @columns  = []
    @max_rows = rows

    columns.times { @columns.push([]) }
  end

  def play(player_id:, column:)
    column = column - 1

    fail 'Column does not exist' if column > columns.size || column < 0
    fail 'Cannot play this column, position full' if column_full?(column)

    columns[column].push(player_id)
  end

  private

  def column_full?(column)
    columns[column].size >= max_rows
  end
end
