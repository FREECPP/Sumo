#For cars
python "/opt/homebrew/opt/sumo/share/sumo/tools/randomTrips.py" -n "/opt/homebrew/opt/sumo/share/sumo/tools/2024-10-08-17-29-51/241026/241026_A035.net.xml" -r 241026_2_random_route_cars.rou.xml --vehicle-class passenger --seed 42 --begin 0 --end 3600  --insertion-density 40 --random-depart -v
#For bicycles
python "/opt/homebrew/opt/sumo/share/sumo/tools/randomTrips.py" -n "/opt/homebrew/opt/sumo/share/sumo/tools/2024-10-08-17-29-51/241026/241026_A035.net.xml" -r 241026_2_random_route_bicycles.rou.xml --vehicle-class bicycle --seed 42 --begin 0 --end 3600  --insertion-density 70 --random-depart -v --prefix bike
#For all vehicles
python "/opt/homebrew/opt/sumo/share/sumo/tools/randomTrips.py" -n "/opt/homebrew/opt/sumo/share/sumo/tools/2024-10-08-17-29-51/241026/241026_A035.net.xml" -r 241026_2_random_route_pedestrian.rou.xml --pedestrians --seed 42 --begin 0 --end 3600  --insertion-density 70 --random-depart -v --prefix pedestrian