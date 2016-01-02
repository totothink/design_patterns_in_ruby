class CdPlayer
  attr_reader :description, :title, :current_track

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
    @title = nil
    puts "#{description} eject"
  end

  def play(title_or_track)
    if is_track?(title_or_track)
      play_by_track(title_or_track)
    else
      play_by_title(title_or_track)
    end
  end

  def is_track?(title_or_track)
    title_or_track.is_a?(Integer)
  end

  def play_by_title(title)
    @title = title
    @current_track = 0
    puts "#{description} playing #{title}"    
  end

  def play_by_track(track)
    if title
      @current_track = track
      puts "#{description} playing track #{current_track}"
    else
      puts "#{description} can't play track #{current_track}, no cd inserted"
    end
  end

  def stop
    @current_track = 0
    puts "#{description} stopped"
  end

  def pause
    puts "#{description} paused #{title} "
  end

  def to_s
    description
  end
end