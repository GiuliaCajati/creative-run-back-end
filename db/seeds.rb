# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#

# "drawings"
#     t.string "name"
#     t.string "category"
#     t.string "city"
#     t.decimal "miles", precision: 8, scale: 2
#     t.datetime "created_at", precision: 6, null: false
#     t.datetime "updated_at", precision: 6, null: false
# # Drawing 


#   create_table "markers", force: :cascade do |t|
#     t.decimal "longitude", precision: 10, scale: 6
#     t.decimal "latitude", precision: 10, scale: 6
#     t.integer "drawing_id"
#     t.datetime "created_at", precision: 6, null: false
#     t.datetime "updated_at", precision: 6, null: false
#   end