require 'byebug'
class Drawing < ApplicationRecord
    has_many :markers

    # # for each drawing add add_polyline
    # #initialize the class with the polyline
    # def self.route_drawings 
    #     byebug
    #     drawing_markers = []
    #     coordinates = []
    #     # for every drawing get coordianates of all markers 

    #     drawing_markers = self.all.map{ |d| (d.markers)} 
    #     coordinates = drawing_markers.map{ |m| (m.longitude)}
    #     byebug
    # end
      
    # def find_connecting_marker
    #     byebug
    #     self.route_drawings.each{ |marker| find_connecting_marker(marker)} 
    # end

    # def find_connecting_markerm(marker)
    #     byebug
    # #     current_marker = marker
    # #     if current_marker.place > 1 
    # #         prev_marker = Marker.where(drawing_id: test.drawing_id, place: test.place+1)
    # #         start = [  prev_marker.longitude , prev_marker.latitude ]
    # #         finish = [ current_marker.longitude , current_marker.latitude ]
    # #         add_polyline(start, finish)
    # end


end
