require 'byebug'
require 'httparty'
class Marker < ApplicationRecord
    belongs_to :drawing
    url = 'http://127.0.0.1:5000/route/v1/foot/'
    # run server: docker run -t -i -p 5000:5000 -v "${PWD}:/data" osrm/osrm-backend osrm-routed --algorithm mld /data/district-of-columbia-latest.osrm

    # DEMO: https://router.project-osrm.org/route/v1/foot/13.388860,52.517037;13.385983,52.496891?steps=true&alternatives=true
    # /route/v1/{profile}/{coordinates}?alternatives={true|false|number}&steps={true|false}&geometries={polyline|polyline6|geojson}&overview={full|simplified|false}&annotations={true|false}
#####################################################################

    def self.connect_all_markers
        # drawing_coordinates = {}
        markers = self.all
        markers.each_with_index do | m, i | 
            if markers[i].place > 1 
                byebug
                pair = [[markers[i-1].longitude, markers[i-1].latitude], [markers[i].longitude, markers[i].latitude]] 
                byebug
                url_coordinates = pair.join(',') 
                step_request = url + url_coordinates + '?steps=true&alternatives=true'

# GET request for polyline (.get(url + coordinates.join(',') + '?steps=true&alternatives=true'))
# Format polyline (JSON.parse(response).routes[0].legs[0].steps.map(step => step.maneuver.location))
# Send to front end 

            else 
                next 
                #continue
            end 
        end
    end

end

