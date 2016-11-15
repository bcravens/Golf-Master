def get_course_data
  course_data = {
    "pebble" => {
                  img_url: "http://www.paraparaumubeachgolfclub.co.nz/clubs/320-1/images/banners-4.jpg",
                  name: "Pebble Beach",
                  location: "1700 17-Mile Drive, Pebble Beach, CA 93953",
                  num_holes: 18,
                  par: 72,
                  yardage: 6828,
                  rating: 74.7,
                },
    "spyglass" => {
                  img_url: "http://d35hcom83xwl0h.cloudfront.net/assets/kauricliffs/generalpresentation/id19292pic5.jpg",
                  name: "Spyglass Hill",
                  location: "Stevenson Drive, Pebble Beach, CA 93953",
                  num_holes: 18,
                  par: 72,
                  yardage: 6960,
                  rating: 75.5,
                },
    "links" => {
                  img_url: "https://www.pebblebeach.com/content/uploads/pbgl-5-photogallery-1550x930.jpg",
                  name: "The Links at Spanish Bay",
                  location: "2700 17-Mile Drive, Pebble Beach, CA 93953",
                  num_holes: 18,
                  par: 72,
                  yardage: 6821,
                  rating: 74,
                },
    "delmonte" => {
                  img_url: "https://www.pebblebeach.com/content/uploads/pbgl-10-photogallery-1550x930.jpg",
                  name: "Del Monte",
                  location: "1300 Sylvan Road, Monterey, CA 93940",
                  num_holes: 18,
                  par: 72,
                  yardage: 6365,
                  rating: 71,
                }
    }
  return course_data
end
