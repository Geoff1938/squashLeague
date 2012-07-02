class PlayersController < ApplicationController

  def index
    @players = Player.paginate(:page => params[:page]).order('name ASC')
  end

	def show
	  @player = Player.find(params[:id])	  
	  if !Playerdiv.where(:player_id => params[:id]).empty?
      @currentDiv = Playerdiv.where(:player_id => params[:id]).last
      @playerDivMatch = Match.where(:playerdiv_id => @currentDiv.division_id)
    else
      @currentDiv = "nill"
      @playerDivMatch = "nill"
    end
    
	end

end