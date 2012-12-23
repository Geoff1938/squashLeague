class PagesController < ApplicationController
  def home
  @title = "Home"
  end

  def contact
  @title = "Contact"
  end

  def about
    @title = "About"
  end

  def help
    @title = "Help"
  end
  
  def league
    @league = 1
    @title = "Leagues"
    @season = 1
    @divs = Division.where( :season_id => @season).count
    @division_ids = Division.where( :season_id => @season)
    @players = Playerdiv.where(:division_id => 1)

    @player = Array.new
    @players.each do |p|
      @player << p.player_id
    end
  
  def rankings
    @title = "Rankings"

    def all_player_matches(player)
      result = Match.joins(:results).where(:results => {:player_id => player})
    end
    rankings2 = Array.new
  end
    @league_players = Playerdiv.joins(:division).where(:divisions => {:season_id => @season})
    @players = Result.joins(:match).where(:matches => {:playerdiv_id => 1}).where(:results => {:player_id => (params[:article])})
  end
  

  def table
    @title = "Table"
  end
  
  def rules
    @title = "League Rules"
  end
end