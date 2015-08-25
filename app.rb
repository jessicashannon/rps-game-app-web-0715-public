require_relative 'config/environment'

class GameApp < Sinatra::Base

  get '/rps/:play' do
    @game = RPSGame.new(params[:play])
    erb :rps_game
  end
end

# Integrate your RPSGame class with the Sinatra application in app.rb.
#
# The application will serve 1 route: GET requests to  the path /rps/:play.
# The value of :play will be used as the player's throw (rock, paper, or
# scissors).
#
# The Sinatra application should serve an HTML page that displays the move that
# the player made, the move that the computer made, and whether the player won,
# lost, or tied.
