class Player
    def initialize(window)
        @window = window
        @icon = Gosu::Image.new(@window, "player.png", true)
        @x = 0
        @y = window.height - 80
        @explosion = Gosu::Image.new(@window, "explosion.png", true)
        @exploded = false
    end
    
    def move_right
        @x = @x + 10
        if @x > @window.width-50
            @x = @window.width-50
        end
    end
    
    def move_left
        @x = @x - 10
        if @x < 0
            @x = 0
        end
    end
    
    def draw
        if @exploded
            @explosion.draw(@x, @y, 4)
        else
            @icon.draw(@x,@y,1)
        end
    end
    
    def hit_by?(bullet)
        if Gosu::distance(bullet.x, bullet.y, @x, @y) < 20
            @exploded = true
        end
    end
    
end