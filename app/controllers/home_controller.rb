class HomeController < ApplicationController
  def index
    @day = %w(M T W TH F)
    @timeslot = %w(0830 0900 0930 1000 1030 1100 1130 1200 1230 100 130 200 230 300 330 400 430 500 530 600 630 0700)

  end
end
