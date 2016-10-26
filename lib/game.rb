class Game

	attr_reader :player_1, :player_2, :p1_defense, :p2_defense

	def initialize(player_1, player_2 = false)
		@player_1 = player_1
		@player_2 = player_2
		@p1_defense = nil
		@p2_defense = nil
	end

	def start(new_board)
		@p1_defense = new_board
		@p2_defense = new_board
	end

	def move(piece, x, y)
		place_piece(DESTROYER, x, y) if piece == DESTROYER
		place_piece(SUBMARINE, x, y) if piece == SUBMARINE
		place_piece(CRUISER, x, y) if piece == CRUISER
		place_piece(BATTLESHIP, x, y) if piece == BATTLESHIP
	end


	private

	DESTROYER = 'd'
	SUBMARINE = 's'
	CRUISER = 'c'
	BATTLESHIP = 'b'

	def place_piece(type, x, y)
		for n in x[-1]..y[-1]
			for l in x[0]..y[0]
				@p1_defense[(l + n.to_s).to_sym] = type
				@p1_defense[(l + n.to_s).to_sym] = type
			end
		end
	end

end