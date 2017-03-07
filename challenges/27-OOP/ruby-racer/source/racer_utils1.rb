require_relative 'racer_utils'
require "rubygems"
require "artii"


class View
  def print_board (pistaA, pistaZ)
    puts @pistaA = pistaA
    puts @pistaZ = pistaZ
  end
  def print_winner
    puts
    puts "El jugador'#{game.winner}' ha ganado!"
    puts
  end
  def clear
    clear_screen!
  end
  def artii
    move_to_home!
    a = Artii::Base.new :font => 'slant'
    puts a.asciify('RubyRacer Game')
    puts
    puts
  end
end

class Controller
  def initialize(view, model)
    vista = View.new()
    modelo = RubyRacer.new()
  end
  def initialize
  end
  def init_players
    @players = ["A", "Z"]
  end
  def finished?
    if (modelo.posicionA >= 30) || (modelo.posicionZ >= 30)
      true
    else
      false
    end
  end

  def run
    init_players
    # game = Controller.new()
    vista.clear
    until finished?
      init_players.each do |player|
        vista.artii
        vista.print_board
        modelo.advance_player!()
        sleep(0.5)
      end
    end
    vista.print_winner
  end
  def winner
    if (modelo.posicionA >= 30)
      "A"
    else (modelo.posicionZ >= 30)
      "Z"
   end
  end



end

class RubyRacer
  attr_accessor :players, :length
  def initialize(players, length = 30)
      @posicionA = 0
      @posicionZ = 0
      @valorA = 0
      @valorZ =0
      @pistaOriginal = '-'*length
      @pistaA = @pistaOriginal
      @pistaZ = @pistaOriginal
      @players=players
      @dado = Die.new
      @nuevoA = 0
      @nuevoZ = 0
  end
  def advance_player!
    if player == "A"
      nuevoA = @posicionA + @valorA
      @trackA = @pistaOriginal.split (//)
      @trackA[nuevoA] = player
      @pistaA = @trackA.join
      @valorA = @dado.roll
      @posicionA = nuevoA
    else
      nuevoZ = @posicionZ + @valorZ
      @trackZ = @pistaOriginal.split (//)
      @trackZ[nuevoZ] = player
      @pistaZ = @trackZ.join
      @valorZ = @dado.roll
      @posicionZ = nuevoZ
    end
  end
end


game=Controller.new (Vista, RubyRacer)
