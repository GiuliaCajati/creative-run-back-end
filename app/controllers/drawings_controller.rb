class DrawingsController < ApplicationController
    
    def index 
        @drawings = Drawing.all
        render  json: @drawings.to_json
    end 

end
