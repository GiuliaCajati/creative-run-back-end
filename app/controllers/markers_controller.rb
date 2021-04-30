require 'byebug'
class MarkersController < ApplicationController
    
    # when you show all markers 
    # for each marker find_connecting_marker
    def index     
        @markers = Marker.all
        render json: @markers.to_json
    end 



end
