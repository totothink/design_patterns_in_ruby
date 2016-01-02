class HomeTheaterFacade
  attr_reader :amp, :tuner, :dvd, :cd, :projector, :lights, :screen, :popper

  def initialize(amp, tuner, dvd, cd, projector, lights, screen, popper)
    @amp = amp
    @tuner = tuner
    @dvd =dvd
    @cd = cd
    @projector = projector
    @lights = lights
    @screen = screen
    @popper = popper    
  end

  def watch_movie(movie)
    puts "Get ready to watch a movie..."
    popper.on
    popper.pop
    lights.dim(10)
    screen.down
    projector.on
    projector.wide_screen_mode
    amp.on
    amp.dvd = dvd
    amp.set_surround_sound
    amp.volume = 5
    dvd.on
    dvd.play(movie)
  end

  def end_movie
    puts "Shutting movie theater down..."
    popper.off
    lights.on
    screen.up
    projector.off
    amp.off
    dvd.stop
    dvd.eject
    dvd.off
  end

  def listen_to_cd(cd_title)
    puts "Get ready for an audiopile experence..."
    lights.on
    amp.on
    amp.volume = 5
    amp.set_cd(cd)
    amp.set_stereo_sound
    cd.on
    cd.play(cd_title)
  end

  def end_cd
    puts "Shutting down CD..."
    amp.off
    amp.set_cd(cd)
    cd.eject
    cd.off
  end

  def listen_to_radio(frequency)
    puts "Tuning in the airwaves..."
    tuner.on
    tuner.frequency = frequency
    amp.on
    amp.volume = 5
    amp.tuner = tuner
  end

  def end_radio
    puts "Shutting down the tuner..."
    tuner.off
    amp.off
  end
end