
require 'json'
Drawing.destroy_all
Marker.destroy_all

# elephant = Drawing.create(
#         name: 'Elephant',
#         category:'Animal',
#         city:'Washington, DC',
#         total_miles: 10.41,
# )

# Marker.create(
#     longitude: -77.102304,
#     latitude: 38.893872,
#     place: 1,
#     distance_from_prev: 2.7,
#     drawing_id: elephant.id
# )
# Marker.create(
#     longitude: -77.06278,
#     latitude: 38.905199,
#     place: 2,
#     distance_from_prev: 1.5,
#     drawing_id: elephant.id
# )
# Marker.create(
#     longitude: -77.049433,
#     latitude: 38.888266,
#     place: 3,
#     distance_from_prev: 2.9,
#     drawing_id: elephant.id
# )
# Marker.create(
#     longitude: -77.07546,
#     latitude: 38.895023,
#     place: 4,
#     distance_from_prev: 0.3,
#     drawing_id: elephant.id
# )
# Marker.create(
#     longitude: -77.072334,
#     latitude: 38.88819,
#     place: 5,
#     distance_from_prev: 1.7,
#     drawing_id: elephant.id
# )
# Marker.create(
#     longitude: -77.071552,
#     latitude: 38.896017,
#     place: 6,
#     distance_from_prev: 1.0,
#     drawing_id: elephant.id
# )
# Marker.create(
#     longitude: -77.088296,
#     latitude: 38.886245,
#     place: 7,
#     distance_from_prev: 0.6,
#     drawing_id: elephant.id
# )
# Marker.create(
#     longitude:-77.090453,
#     latitude: 38.886351,
#     place: 8,
#     distance_from_prev: 1.6,
#     drawing_id: elephant.id
# )
# Marker.create(
#     longitude: -77.092796,
#     latitude: 38.893899,
#     place: 9,
#     distance_from_prev: 0.6,
#     drawing_id: elephant.id
# )


spacecraft = Drawing.create(
        name: 'Spacecraft',
        category:'Space',
        city:'Washington, DC',
        total_miles: 10.41,
)

Marker.create(
    longitude: -77.051473,
    latitude: 38.897923,
    place: 1,
    distance_from_prev: 0.6,
    drawing_id: spacecraft.id
)

Marker.create(
    longitude: -77.039481,
    latitude: 38.8921,
    place: 2,
    distance_from_prev: 0.6,
    drawing_id: spacecraft.id
)

Marker.create(
    longitude: -77.018585,
    latitude: 38.892393,
    place: 3,
    distance_from_prev: 0.6,
    drawing_id: spacecraft.id
)

Marker.create(
    longitude: -77.012325,
    latitude: 38.8906484,
    place: 4,
    distance_from_prev: 0.6,
    drawing_id: spacecraft.id
)

Marker.create(
    longitude: -77.019907,
    latitude: 38.887567,
    place: 5,
    distance_from_prev: 0.6,
    drawing_id: spacecraft.id
)

Marker.create(
    longitude: -77.0443408,
    latitude: 38.8861,
    place: 6,
    distance_from_prev: 0.6,
    drawing_id: spacecraft.id
)