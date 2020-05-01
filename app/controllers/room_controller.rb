class RoomController < ApplicationController
  def index
    @rooms = Room.all
  end
 
  def show
    @room = Room.find(params[:id])
  end

  def new
    @room = Room.new
  end

  def create
    @room = Room.new(room_params)
    if @room.save
      redirect_to new_room_theme_url(@room)
    else
      render action: :new
    end
  end

  def edit
    @room = Room.find_by(id: params[:id])
    @theme = Theme.find_by(room_id: params[:id])
  end

  def update
    @room = Room.find_by(id: params[:id])
    if @room.update_attributes(room_params)
      redirect_to :root
    else
      render action: :edit
    end
  end

  private
    def room_params
      params.require(:room).permit(:User01Name,:User02Name,:User03Name,:User04Name,:User05Name,:User06Name,:User07Name,:User08Name,:User01Role,:User02Role,:User03Role,:User04Role,:User05Role,:User06Role,:User07Role,:User08Role)
    end

end