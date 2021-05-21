require 'byebug'
class DrawingsController < ApplicationController
    
    def index 
        @drawings = Drawing.all
        render json: @drawings.to_json({ include: { markers: { methods: [:add_polyline] } } })
    end 

    def create
        @drawing = Drawing.create(name: params[:name])
        render json: @drawing.id.to_json()
    end 

end

