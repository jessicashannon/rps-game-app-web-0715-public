require 'pry'

class RPSGame

attr_accessor :won, :lost, :tied, :computer_play, :play, :computer_play
@@choices = [:rock, :paper, :scissors]

  def initialize(play)
    @computer_play = computer_play
    @play = play
    unless @@choices.include?(@play.to_sym)
      raise PlayTypeError
    end
  end

  def self.valid_play?(play)
    @@choices.include?(play)
  end

  def computer_play
    @computer_play = @@choices.sample
  end

  def won?
    if computer_play == :scissors && @play == :rock
      @won = true
    elsif computer_play == :rock && @play == :paper
      @won = true
    elsif computer_play == :paper && @play == :scissors
      @won = true
    else
      @won = false
    end
  end

  def tied?
    @tied = (computer_play == @play)
  end

  def lost?
    @lost = !(won? || tied?)
  end

  class PlayTypeError < StandardError
  end

end
