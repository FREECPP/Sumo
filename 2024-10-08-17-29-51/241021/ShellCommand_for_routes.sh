#For cars
python "/opt/homebrew/opt/sumo/share/sumo/tools/randomTrips.py" -n "/opt/homebrew/opt/sumo/share/sumo/tools/2024-10-08-17-29-51/241128/241109.net.xml" -r 241031_random_route_cars.rou.xml --vehicle-class passenger --seed 42 --begin 0 --end 3600  --insertion-density 40 --random-depart -v
#For bicycles
python "/opt/homebrew/opt/sumo/share/sumo/tools/randomTrips.py" -n "/opt/homebrew/opt/sumo/share/sumo/tools/2024-10-08-17-29-51/241128/241109.net.xml" -r 241031_random_route_bicycles.rou.xml --vehicle-class bicycle --seed 42 --begin 0 --end 3600  --insertion-density 70 --random-depart -v --prefix bike
#For all vehicles
python "/opt/homebrew/opt/sumo/share/sumo/tools/randomTrips.py" -n "/opt/homebrew/opt/sumo/share/sumo/tools/2024-10-08-17-29-51/241104/241104.net.xml" -r 241104_random_route_pedestrian.rou.xml --pedestrians --seed 42 --begin 0 --end 3600  --insertion-density 70 --random-depart -v --prefix pedestrian --persontrips --additional-files /opt/homebrew/opt/sumo/share/sumo/tools/2024-10-08-17-29-51/241104/bus.rou.xml
#For busses
python "/opt/homebrew/opt/sumo/share/sumo/tools/randomTrips.py" -n "/opt/homebrew/opt/sumo/share/sumo/tools/2024-10-08-17-29-51/241031/241031_A131.net.xml" -r 241031_random_route_bus.rou.xml --additional-files /opt/homebrew/opt/sumo/share/sumo/tools/2024-10-08-17-29-51/241031/bus_stops.add.xml --vehicle-class bus --seed 42 --begin 0 --end 3600  --insertion-density 40 --random-depart -v --prefix bus --validate

