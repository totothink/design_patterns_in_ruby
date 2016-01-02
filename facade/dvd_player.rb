class DvdPlayer
  attr_reader :description, :movie, :current_track

  def initialize(description, amplifier)
    @description = description
    @amplifier = amplifier
  end

  def on
    puts "#{description} on"
  end

  def off
    puts "#{description} off"
  end

  def eject
    @movie = nil
    puts "#{description} eject"
  end

  def play(movie_or_track)
    if is_track?(movie_or_track)
      play_by_track(movie_or_track)
    else
      play_by_title(movie_or_track)
    end
  end

  def is_track?(movie_or_track)
    movie_or_track.is_a?(Integer)
  end

  def play_by_title(movie)
    @movie = movie
    @current_track = 0
    puts "#{description} playing #{movie}"    
  end

  def play_by_track(track)
    if movie
      @current_track = track
      puts "#{description} playing track #{current_track}"
    else
      puts "#{description} can't play track #{current_track}, no dvd inserted"
    end
  end

  def stop
    @current_track = 0
    puts "#{description} stopped"
  end

  def pause
    puts "#{description} paused #{movie} "
  end

  def set_two_channel_audio
    puts "#{description} set set two channel audio"
  end

  def set_surround_audio
    puts "#{description} set surround audio"
  end

  def to_s
    description
  end
end