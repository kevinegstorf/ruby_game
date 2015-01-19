class Window < Gosu::Window

    def initialize
        super(300,300,false)
        @player = Player.new(self)
        @bullet = [Bullet.new(self), Bullet.new(self)]
    end
    
    def update
        if @player.hit_by? @bullet
            #end of game
        else
            if button_down? Gosu::Button::KbLeft
                @player.move_left
            end
            if button_down? Gosu::Button::KbRight
                @player.move_right
            end
            @bullet.each {|bullet| bullet.update}
        end
    end
    
    def draw
        @player.draw
         @bullet.each {|bullet| bullet.draw}
    end
    
end