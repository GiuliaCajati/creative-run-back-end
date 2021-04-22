class Marker < ApplicationRecord
    belongs_to :drawing

    # add a method... once a "end marker" is added a "route" created between the twor markers 
    # 

    url = 'http://127.0.0.1:5000/route/v1/foot/13.388860,52.517037;13.385983,52.496891?steps=true'

    
end
