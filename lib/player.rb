class Player

    attr_reader  :name
    def initialize(turn, name = nil)
        @turn = turn
        @name = name
        @name = 'Player ' + @turn if name.nil? || name.length < 2
end