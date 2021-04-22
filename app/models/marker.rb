# require 'rest-client'
# require 'json'
class Marker < ApplicationRecord
    belongs_to :drawing

#####Fetch data
    # url = 'http://127.0.0.1:5000/route/v1/foot/'
    # run server 
        #  docker run -t -i -p 5000:5000 -v "${PWD}:/data" osrm/osrm-backend osrm-routed --algorithm mld /data/district-of-columbia-latest.osrm
    # DEMO: https://router.project-osrm.org/route/v1/foot/13.388860,52.517037;13.385983,52.496891?steps=true&alternatives=true
    # /route/v1/{profile}/{coordinates}?alternatives={true|false|number}&steps={true|false}&geometries={polyline|polyline6|geojson}&overview={full|simplified|false}&annotations={true|false}
#####################################################################


    # def find_connecting_markers
    #     current_marker = self.marker_id
    #     if current_marker.place > 1 
    #         prev_marker = Marker.where(drawing_id: test.drawing_id, place: test.place+1)
    #         start = [  prev_marker.longitude , prev_marker.latitude ]
    #         finish = [ current_marker.longitude , current_marker.latitude ]
    #   might need to round start and finish 
    #         add_route(start, finish)
    # end

    # def add_route(start, finish) 
    #   coordinates = start[0], start[1]; finish[0], finish[1]  
    #   response = RestClient.get(url + coordinates.join(',') + '?steps=true&alternatives=true')
    #   JSON.parse(response)
    #polyline = OBJECT.routes[0].legs[0].steps.map(step => step.maneuver.location)
    # end


end

