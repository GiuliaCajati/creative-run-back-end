class MarkersController < ApplicationController

    def index 
        @markers = Marker.all
        render json: @markers.to_json
    end 

end
