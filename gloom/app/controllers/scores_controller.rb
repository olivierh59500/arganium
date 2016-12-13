class ScoresController < ApplicationController
  def index
    @time       = Score.where(:name => "time").pluck(:value)[0]
    @par_time   = Level.where(:name => "par").pluck(:value)[0]
    @kills      = Score.where(:name => "kills").pluck(:value)[0]
    @secrets    = Score.where(:name => "secrets").pluck(:value)[0]
    @challenges = Score.where(:name => "challenges").pluck(:value)[0]
    @total      = Score.where(:name => "total").pluck(:value)[0]
  end
end
