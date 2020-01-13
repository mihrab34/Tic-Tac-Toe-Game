class Player

    attr_accessor  :name
    def initialize(turn, name = nil)
        @name = name
        @turn = turn
        @name = 'player ' + @turn if name.nil? || name.length < 2
    end
end