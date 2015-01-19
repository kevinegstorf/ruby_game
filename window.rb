class Window < Gosu::Window

	def initialize
		super(300,300,false)
		@player = Player.new(self)
		@bullet = Bullet.new(self)
	end

	def update
	 	if button_down? Gosu::Button::KbLeft
	 	@player.move_left
		end

	 	if button_down? Gosu::Button::KbRight
	 	@player.move_right
	 	end
	 	@bullet.update
	end

	def draw
		@player.draw
		@bullet.draw
	end

end