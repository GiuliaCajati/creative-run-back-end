
require 'json'
Drawing.destroy_all
Marker.destroy_all

elephant = Drawing.create(
        name: 'Elephant',
        category:'Animal',
        city:'Washington, DC',
        total_miles: 10.41,
)

Marker.create(
    longitude: -77.1023047,
    latitude: 38.8938729,
    place: 1,
    distance_from_prev: 2.7,
    drawing_id: elephant.id
)
Marker.create(
    longitude: -77.062785,
    latitude: 38.9051994,
    place: 2,
    distance_from_prev: 1.5,
    drawing_id: elephant.id
)
Marker.create(
    longitude: -77.0494333,
    latitude: 38.8882662,
    place: 3,
    distance_from_prev: 2.9,
    drawing_id: elephant.id
)
Marker.create(
    longitude: -77.075463,
    latitude: 38.895023,
    place: 4,
    distance_from_prev: 0.3,
    drawing_id: elephant.id
)
Marker.create(
    longitude: -77.072334,
    latitude: 38.88819,
    place: 5,
    distance_from_prev: 1.7,
    drawing_id: elephant.id
)
Marker.create(
    longitude: -77.0715526,
    latitude: 38.8960175,
    place: 6,
    distance_from_prev: 1.0,
    drawing_id: elephant.id
)
Marker.create(
    longitude: -77.088296,
    latitude: 38.886245,
    place: 7,
    distance_from_prev: 0.6,
    drawing_id: elephant.id
)
Marker.create(
    longitude:-77.090453,
    latitude: 38.886351,
    place: 8,
    distance_from_prev: 1.6,
    drawing_id: elephant.id
)
Marker.create(
    longitude: -77.092796,
    latitude: 38.8938993,
    place: 9,
    distance_from_prev: 0.6,
    drawing_id: elephant.id
)
