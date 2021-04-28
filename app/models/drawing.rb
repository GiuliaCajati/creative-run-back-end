require 'byebug'
class Drawing < ApplicationRecord
    has_many :markers
end


    # def self.itterate_drawings 
    #     #for each drawing self.connect_all_markers
    #     drawing = self.all
    # end 

    # def self.connect_all_markers
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
    #     return polylines
    # end