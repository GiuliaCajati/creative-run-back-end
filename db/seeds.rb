
#require 'json'
Drawing.destroy_all
Marker.destroy_all

elephant = Drawing.create(
        name: 'Elephant',
        category:'Animal',
        city:'Washington, DC',
        miles: 10.41,
)

Marker.create(
    longitude: 38.9072,
    latitude: -77.0369,
    drawing_id: elephant.id
)

