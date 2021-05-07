require 'byebug'
class MarkersController < ApplicationController

    # when you show all markers 
    # for each marker find_connecting_marker
    def index     
        @markers = Marker.all
        render json: @markers.to_json
    end 

    def show     
        @marker = Marker.find(params[:id])
        render json: @marker.to_json
    end 

    def update 
        byebug
        @marker = Marker.find(params[:id])
        byebug
        @marker.update(latitude: params[:coordinates][:lat], longitude: params[:coordinates][:lng])
        byebug
        @marker.drawing.update_attributes([:drawing_attribute])
        byebug
        render json:  @marker.to_json(include: {drawing: {}})
    end 

end
