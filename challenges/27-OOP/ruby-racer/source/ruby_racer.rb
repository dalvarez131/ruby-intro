# require_relative 'racer_utils'
# require "rubygems"
# require "artii"


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
