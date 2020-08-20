class EventsController < ApplicationController
  def index
    @events = Event.all
    @user = current_user
    # date = Date.strftime('%B, %d, %Y')
  end

  def create
    @event = Event.create(event_params)
    if @event
      redirect_to events_path
    else
      flash[:errors] = @event.errors.full_messages
      redirect_to events_path
    end
  end

  def edit
  end

  def show
    @event = Event.find(params[:id])
    @comments = @event.comments
  end

  def destroy
    @event = Event.find(params[:id])
    if @event.user.id == session[:user_id]
      @event.destroy 
      redirect_to events_path
    else
      flash[:errors] = ["You can only delete your own events"]
      redirect_to events_path
    end
  end

  private
  def event_params
    params.require(:event).permit(:name, :date, :location, :state, :user_id)
  end

end
