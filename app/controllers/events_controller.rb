class EventsController < ApplicationController

  def index
    @event = Event.all.paginate(page: params[:page], per_page: 8)
  end

  def new
    @event = Event.new
  end

  def create
    @event = Event.new(event_params)
    if @event.save
      redirect_to root_path
    else
      render :new
    end
  end

  def show
  end

  private
  def event_params
    params.require(:event).permit(:name,:place,:startmonth,:startday,:starttime,:startminute,:endmonth,:endday,:endtime,:endminute,:text,:image)
  end


end
