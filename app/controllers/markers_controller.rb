require 'byebug'
class MarkersController < ApplicationController
    def index     
        @markers = Marker.all
        render json: @markers.to_json
    end 

    def show     
        @marker = Marker.find(params[:id])
        render json: @marker.to_json
    end 

    def update 
        @marker = Marker.find(params[:id])
        @marker.update(latitude: params[:coordinates][:lat], longitude: params[:coordinates][:lng])
        # @marker.drawing.update_attribute([:drawing_attribute])
        # render json:  @marker.to_json(methods: [:add_polyline])
        render json:  @marker.to_json(include: {drawing: { include: { markers: { methods: [:add_polyline] } } }})
    end 

end
