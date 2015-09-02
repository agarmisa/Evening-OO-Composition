require_relative "airplane"
require_relative "container"
require_relative "ingredient"

airplanes = []
airplanes << Airplane.new(9000, 2200)
airplanes << Airplane.new(9000, 450)
airplanes << Airplane.new(13000, 2200)
airplanes << Airplane.new(13000, 450)

airplanes.each do |airplane|
  airplane.print
end
