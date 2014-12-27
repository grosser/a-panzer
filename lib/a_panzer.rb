module APanzer
  class Game
    PANZER = []
    PANZER << <<-SPRITE

\\
|"""\\-=
(____)
    SPRITE
    PANZER << <<-SPRITE
         __,-.
\\      ( .`-')
|"""\\-=(_ (_,_)
(____)   `--'
    SPRITE
    PANZER << <<-SPRITE
         __,-.
\\       ( .`-')_.o
|"""\\-=(_ (_,_)
(____)   `--'
    SPRITE
    PANZER << <<-SPRITE
         ..,-.      _.--""""o
\\       : .`-';_.-"
|"""\\-=:. (.,.)
(____)   `:-'
    SPRITE
    PANZER << <<-SPRITE
         .. .       _.--""""--.
\\       : . : ; . "             "-.
|"""\\-=:. :.,.;                    `.
(____)   `.:'                        o
    SPRITE

    def initialize
      @position = 0
      @sprite = 0
      @pew = false
      @moving = false
    end

    def board
      PANZER[@sprite].split("\n").map { |l| "#{" " * @position}#{l}" }
    end

    def pew?
      @pew
    end

    def moving?
      @moving
    end

    def move(x)
      return if @pew
      @moving = x
      animate
    end

    def shoot
      @pew = true
      animate
    end

    def animate
      if @pew
        @sprite += 1
        @sprite %= PANZER.size
        @pew = false if @sprite == 0
      elsif @moving
        @position += @moving
        @moving = false if @position == 0
      end
    end
  end
end
