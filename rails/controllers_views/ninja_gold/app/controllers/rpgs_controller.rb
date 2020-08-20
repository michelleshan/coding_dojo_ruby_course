class RpgsController < ApplicationController
  def index
    @gold_total = session[:gold_total] ||=0
    @activities = session[:activities] ||=[]
  end

  def process_gold
    if params[:place] == 'farm'
      gold = rand(10..20)
    elsif params[:place] == 'cave'
      gold = rand(5..10)
    elsif params[:place] == 'house'
      gold = rand(2..5)
    elsif params[:place] == 'casino'
      gold = rand(-50..50)
    end
    timestamp = DateTime.now.in_time_zone.strftime('%Y/%d/%m %I:%M:%S %p')
    if gold > 0
      session[:activities] << "Earned #{gold} from the #{params[:place]}! (#{timestamp})"
    elsif gold < 0
      session[:activities] << "Entered a #{params[:place]} and lost #{gold} golds...Ouch... (#{timestamp})"
    end
    session[:gold_total] += gold
    redirect_to '/'
  end

  def reset
    session.clear
    redirect_to '/'
  end

end
