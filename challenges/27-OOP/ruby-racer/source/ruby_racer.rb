# require_relative 'racer_utils'
# require "rubygems"
# require "artii"

<<<<<<< HEAD

# class RubyRacer
#   attr_accessor :players, :length
#   def initialize(players, length = 30)
#     @posicionA = 0
#     @posicionZ = 0
#     @valorA = 0
#     @valorZ =0
#     @pistaOriginal = '-'*length
#     @pistaA = @pistaOriginal
#     @pistaZ = @pistaOriginal
#
#     @dado = Die.new
#     @nuevoA = 0
#     @nuevoZ = 0
#   end
#
#   # Devuelve true si uno de los jugadores llego a la meta, falso de lo contrario
#   def finished?
#     if (@posicionA >= 30) || (@posicionZ >= 30)
#       true
#     else
#       false
#     end
#   end
#
#   # Retorna el ganador si hay uno, nil de lo contrario
#   def winner
#     if (@posicionA >= 30)
#       "A"
#     else (@posicionZ >= 30)
#       "Z"
#    end
#   end
#
#   # Rueda el dado y avanza la posicion del jugador respectivo
#   def advance_player!(player)
#     if player == "A"
#       nuevoA = @posicionA + @valorA
#       @trackA = @pistaOriginal.split (//)
#       @trackA[nuevoA] = player
#       @pistaA = @trackA.join
#       @valorA = @dado.roll
#       @posicionA = nuevoA
#     else
#       nuevoZ = @posicionZ + @valorZ
#       @trackZ = @pistaOriginal.split (//)
#       @trackZ[nuevoZ] = player
#       @pistaZ = @trackZ.join
#       @valorZ = @dado.roll
#       @posicionZ = nuevoZ
#     end
#   end
  # Imprime el tablero actual
  # El tablero siempre debe tener las mismas dimensiones
  # Debes imprimir encima del tablero anterior
  # def print_board
  #   puts @pistaA
  #   puts @pistaZ
  # end
# end

#=========== driver code ===========

# players = ["A", "Z"]
# game = RubyRacer.new(players)
#
# # limpia la pantalla
# clear_screen!
#
# until game.finished?
#   players.each do |player|
#     # Mueve el cursor a la esquina derecha
#     move_to_home!
#     a = Artii::Base.new :font => 'slant'
#     puts a.asciify('RubyRacer Game')
#     puts
#     puts
#
#     # imprimimos el tablero en su estado inicial
#     game.print_board
#     game.advance_player!(player)
#
#     # tenemos que dormir un poquito, de lo contrario no vamos a ver nada del juego.
#     # mira http://www.ruby-doc.org/core-1.9.3/Kernel.html#method-i-sleep
#     sleep(0.5)
#   end
# end

# El juego termino
#game.print_board
# puts
# puts "El jugador'#{game.winner}' ha ganado!"
# puts
=======
class RubyRacer
  attr_reader :players, :length, :winner
  attr_accessor :track1, :track2

  def initialize(players, length = 30)
    @die = Die.new
    @players = players
    @length = length
    @track1 = create_track(@players[0])
    @track2 = create_track(@players[1])
    @winner = nil
  end

  def create_track(player)
    track = Array.new(@length) {"|"}
    track[0] = player
    track
  end

  # Devuelve true si uno de los jugadores llego a la meta, falso de lo contrario
  def finished?
    if @track1.index(@players[0]) >= @length
      true
    elsif @track2.index(@players[1]) >= @length
      true
    end
  end

  # Retorna el ganador si hay uno, nil de lo contrario
  def winner
    if @track1.index(@players[0]) == @track2.index(@players[1])
      @winner = @players[0] + ", " + @players[1]

    elsif @track1.index(@players[0]) >= @length
      @winner = @players[0]

    elsif @track2.index(@players[1]) >= @length
      @winner = @players[1]
    else
      nil
    end
  end

  # Rueda el dado y avanza la posicion del jugador respectivo
  def advance_player!(player)
    @track1 = @track1.insert(@die.roll + @track1.index(@players[0]), @track1.delete_at(@track1.index(@players[0])))
    @track2 = @track2.insert(@die.roll + @track2.index(@players[1]), @track2.delete_at(@track2.index(@players[1])))
  end

end
>>>>>>> upstream/master
