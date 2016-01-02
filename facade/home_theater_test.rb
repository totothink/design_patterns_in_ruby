require_relative "amplifier"
require_relative "cd_player"
require_relative "dvd_player"
require_relative "popcorn_popper"
require_relative "projector"
require_relative "screen"
require_relative "theater_lights"
require_relative "tuner"
require_relative "home_theater_facade"

amp = Amplifier.new("Top-O-Line Amplifier")
tuner = Tuner.new("Top-O-Line AM/FM Tuner", amp)
dvd = DvdPlayer.new("Top-O-Line DVD Player", amp)
cd = CdPlayer.new("Top-O-Line CD Player", amp)
projector = Projector.new("Top-O-Line Projector", dvd)
lights = TheaterLights.new("Theater Ceiling Lights")
screen = Screen.new("Theater Screen")
popper = PopcornPopper.new("Popcorn Popper")

home_theater = HomeTheaterFacade.new(amp, tuner, dvd, cd, projector, lights, screen, popper)

home_theater.watch_movie("Raiders of the Lost Ark")
home_theater.end_movie