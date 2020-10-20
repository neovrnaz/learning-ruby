module LaserBots
  module Console
    class Command
    end
  end

  module World
    class Player
      attr_reader :name

      def initialize(name)
        @name = name
      end
    end
  end

  class Robot
    attr_reader :name

    def initialize(name)
      @name = name
    end

    def target_player(name)
      Player.new(name)
    end
  end
end

# :: is the scope resolution operator. It determines what
# scope the module can be found under.
player = LaserBots::World::Player.new("Richard")
puts player.name
