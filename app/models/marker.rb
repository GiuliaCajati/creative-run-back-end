class Marker < ApplicationRecord
    belongs_to :drawing
    # url = 'http://127.0.0.1:5000/route/v1/foot/'

    # def find_connecting_markers
    #     current_marker = self.marker_id
    #     if current_marker.place > 1 
    #         prev_marker = Marker.where(drawing_id: test.drawing_id, place: test.place+1)
    #         start = [  prev_marker.longitude , prev_marker.latitude ]
    #         finish = [ current_marker.longitude , current_marker.latitude ]
    #         add_route(start, finish)
    # end

    # def add_route(start, finish) 
    #     coordinates = start[0], start[1]; finish[0], finish[1]  
    #     # fetch route 
    #     url + coordinates.join(',')
    # end



    
    
    # 13.388860,52.517037;13.385983,52.496891?steps=true'
    # /{service}/{version}/{profile}/{coordinates}[.{format}]?option=value&option=value


end
