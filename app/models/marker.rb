# run server: docker run -t -i -p 5000:5000 -v "${PWD}:/data" osrm/osrm-backend osrm-routed --algorithm mld /data/district-of-columbia-latest.osrm
require 'byebug'
require 'rest-client'
class Marker < ApplicationRecord
    belongs_to :drawing  

    def add_polyline
        url = 'http://127.0.0.1:5000/route/v1/foot/'
        url_request = '?steps=true&alternatives=true'
        if self.place > 1  
            prev_marker = Marker.where(place: (self.place-1))
            start_coordinates = [ prev_marker[0]['longitude'], prev_marker[0]['latitude'] ]

            end_coordinates = [ self.longitude, self.latitude ]
            step_request = url + start_coordinates.join(',')  + ';' + end_coordinates.join(',') + url_request
            
            data = RestClient.get step_request
            polyline = (JSON.parse(data)["routes"][0]["legs"][0]["steps"].map{|step| step["intersections"][0]["location"]})
            
            start_coordinates = [ prev_marker[0]['latitude'].to_f, prev_marker[0]['longitude'].to_f]
            end_coordinates = [  self.latitude.to_f, self.longitude.to_f ]
            [ start_coordinates ] + polyline.map{ |coordinates| [ coordinates[1] , coordinates[0] ]} + [ end_coordinates ] 
        end 
    end

end
