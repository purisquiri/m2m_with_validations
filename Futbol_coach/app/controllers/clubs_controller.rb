class ClubsController < ApplicationController
  def index
    @clubs = Club.all
  end

  def show
    @club = Club.find(params[:id])
  end

  def new
    @club = Club.new
  end

  def create
    #if this work lets save
    @club = Club.new(club_params)
    if @club.valid?
      @club.save
      redirect_to club_path(@club)
    else
      render :new
    end
    #else redirect_new_again
  end

  def edit
    @club = Club.find(params[:id])
  end

  def update
    @club = Club.find(params[:id])
    @club.update(club_params)
    redirect_to club_path(@club)
  end

  def destroy
    @club = Club.find(params[:id])
    @club.delete
    redirect_to clubs_path
  end

  private

  def club_params
    params.require(:club).permit(:name, :city, :home_arena, :wins, :losses)
  end
end
