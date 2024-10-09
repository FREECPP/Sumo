#!/bin/bash
python "$SUMO_HOME/tools/ptlines2flows.py" -n osm.net.xml.gz -b 0 -e 3600 -p 600 --random-begin --seed 42 --ptstops osm_stops.add.xml --ptlines osm_ptlines.xml -o osm_pt.rou.xml --ignore-errors --vtype-prefix pt_ --stopinfos-file stopinfos.xml --routes-file vehroutes.xml --trips-file trips.trips.xml --min-stops 0 --extend-to-fringe --verbose
python "$SUMO_HOME/tools/randomTrips.py" -n osm.net.xml.gz --fringe-factor 2 --insertion-density 6 -o osm.bicycle.trips.xml -r osm.bicycle.rou.xml -b 0 -e 3600 --trip-attributes "departLane=\"best\"" --fringe-start-attributes "departSpeed=\"max\"" --validate --remove-loops --via-edge-types highway.motorway,highway.motorway_link,highway.trunk_link,highway.primary_link,highway.secondary_link,highway.tertiary_link --vehicle-class bicycle --vclass bicycle --prefix bike --max-distance 8000
python "$SUMO_HOME/tools/randomTrips.py" -n osm.net.xml.gz --fringe-factor 5 --insertion-density 12 -o osm.passenger.trips.xml -r osm.passenger.rou.xml -b 0 -e 3600 --trip-attributes "departLane=\"best\"" --fringe-start-attributes "departSpeed=\"max\"" --validate --remove-loops --via-edge-types highway.motorway,highway.motorway_link,highway.trunk_link,highway.primary_link,highway.secondary_link,highway.tertiary_link --vehicle-class passenger --vclass passenger --prefix veh --min-distance 300 --min-distance.fringe 10 --allow-fringe.min-length 1000 --lanes
python "$SUMO_HOME/tools/randomTrips.py" -n osm.net.xml.gz --fringe-factor 1 --insertion-density 10 -o osm.pedestrian.trips.xml -r osm.pedestrian.rou.xml -b 0 -e 3600 --vehicle-class pedestrian --prefix ped --persontrips --trip-attributes "modes=\"public\"" --additional-files osm_stops.add.xml,osm_pt.rou.xml --persontrip.walk-opposite-factor 0.8 --duarouter-weights.tls-penalty 20
