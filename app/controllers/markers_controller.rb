class MarkersController < ApplicationController
    
    # when you show all markers 
    # for each marker find_connecting_marker
    def index 
        @markers = Marker.connect_all_markers
        render json: @markers.to_json
    end 

end
