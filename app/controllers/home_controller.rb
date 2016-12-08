class HomeController < ApplicationController
  def index
    # start_time = Time.new(2016,12,7,8,30,00)
    # end_time = Time.new(2016,12,7,7,00,00)
    start_time = 8.3
    end_time = 17.0
    @time_range = (start_time..end_time)
  end
end
