class Timer
  #write your code here
  attr_accessor :seconds

  def initialize
    @seconds = 0
  end

  def add_0(time)
    if time < 10
      return "0" + time.to_s
    else
      return time.to_s
    end
  end

  def time_string
    hours = @seconds / 3600
    mins = (@seconds / 60) % 60
    seconds = @seconds % 60
    return add_0(hours) + ":" + add_0(mins) + ":" + add_0(seconds)
  end
end
