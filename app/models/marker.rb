# run server: docker run -t -i -p 5000:5000 -v "${PWD}:/data" osrm/osrm-backend osrm-routed --algorithm mld /data/district-of-columbia-latest.osrm
require 'byebug'
require 'rest-client'
class Marker < ApplicationRecord
    belongs_to :drawing  

    # render polyline connecting each marker to prev marker 
    def add_polyline
        url = 'http://127.0.0.1:5000/route/v1/foot/'
        url_request = '?steps=true&alternatives=true'
        if self.place > 1  
            prev_marker = Marker.where(place: (self.place-1))
            start_coordinates = [prev_marker[0]['longitude'], prev_marker[0]['latitude']]

            end_coordinates = [self.longitude, self.latitude]
            step_request = url + start_coordinates.join(',')  + ';' + end_coordinates.join(',') + url_request

            data = RestClient.get step_request
            polyline = (JSON.parse(data)["routes"][0]['legs'][0]['steps'].map{|step| step['intersections'][0]['location']})
        end 
    end

end

    # DEMO: https://router.project-osrm.org/route/v1/foot/13.388860,52.517037;13.385983,52.496891?steps=true&alternatives=true
    # def connect_all_markers
    #     byebug 
    #     url = 'http://127.0.0.1:5000/route/v1/foot/'
    #     polylines = []
    #     markers = self.all
    #     markers.each_with_index do | m, i | 
    #         if markers[i].place > 1 
    #             start = [markers[i-1].longitude, markers[i-1].latitude]
    #             finish = [markers[i].longitude, markers[i].latitude]
    #             url_start = start.join(',') 
    #             url_finish = finish.join(',') 
    #             url_coordinates = url_start + ';' + url_finish
    #             step_request = url + url_coordinates + '?steps=true&alternatives=true'
   
    #             data = RestClient.get step_request
    #             polylines.push(JSON.parse(data)["routes"][0]['legs'][0]['steps'][0]['intersections'].map{|int| int['location'] })
    #         else 
    #             next 
    #         end 
    #     end
    #     byebug 
        
    #     return polylines
    # end