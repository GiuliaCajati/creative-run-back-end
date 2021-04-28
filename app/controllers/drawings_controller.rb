class DrawingsController < ApplicationController
    
    def index 
        @drawings = Drawing.all
        render json: @drawings.to_json({include: {markers: {methods: [:add_polyline]}}})
    end 

end


