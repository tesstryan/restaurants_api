# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

restaurants = Restaurant.create([
  { name: "Cemitas Puebla",
    description: "Delicious cemitas in regular or smaller (chico) size are a great departure from the everyday sandwich option, but still an easy to serve lunch. Paired with salad for a lighter lunch or rice, beans, chips and guacamole for a hearty meal, these sandwiches are sure to impress the office.",
    rating: rand(0.0..5.0).round(1),
    address: "817 W Fulton Mkt Chicago, IL 60607"
  },
  { name: "Le Pain Quotidien",
    description: "Freshly baked bread is the first ingredient in each of Le Pain's delicious sandwiches",
    rating: rand(0.0..5.0).round(1),
    address: "135 North Clinton Street Chicago, IL 60661"
  },
  { name: "Pleasant House Bakery",
    description: "British-inspired and locally sourced - Pleasant House is known for their hand-made pies. Try the fivers to increase variety and share with friends!",
    rating: rand(0.0..5.0).round(1),
    address: "964 W 31st St Chicago, IL 60608"
  },
  { name: "Chicago Bagel Authority",
    description: "Steamed bagel sandwich boxed lunches and combinations",
    rating: rand(0.0..5.0).round(1),
    address: "11 N. Wells Chicago, IL 60606"
  },
  { name: "Snarf's Sandwiches",
    description: "Snarf's ​​award-winning, oven toasted sandwiches will have everyone craving for more. Add to that fresh salads, sides and desserts, and it's guaranteed to become an office favorite!",
    rating: rand(0.0..5.0).round(1),
    address: "180 N Stetson Chicago, IL 60610"
  },
  { name: "Zenwich",
    description: "Build a buffet for any size crowd with these delicious Zenwich sandwiches, wraps, salads and sides",
    rating: rand(0.0..5.0).round(1),
    address: "206 W Van Buren Chicago, IL 60607"
  }
  ])
