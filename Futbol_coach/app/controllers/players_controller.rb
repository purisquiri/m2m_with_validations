class PlayersController < ApplicationController
  
  def create
    @player = Player.new(player_params)
    if @player.valid?
      @player.save
      redirect_to player_path(@player)
    else
      render :new
    end
  end
  
  def new
    @player = Player.new
  end

  def show
    find_player
  end

  def edit
    find_player
  end

  def update
    find_player
    @player.update(player_params)
    redirect_to player_path(@player)
  end

  def destroy
    find_player.delete
    redirect_to players_path
  end

  def index
    @players = Player.all    
  end



  private
  
  def player_params
    params.require(:player).permit(:name, :phone_number, :email, :player_number, :club_id)
  end

  def find_player
    @player = Player.find(params[:id])
  end

end
