# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


Client.create(company: "Fooda")
puts "Your access_token is: #{Client.first.access_token}"

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


  cemitas_puebla_id = Restaurant.find_by_name("Cemitas Puebla").id
  la_pain_quotidien_id = Restaurant.find_by_name("Le Pain Quotidien").id
  pleasant_house_bakery_id = Restaurant.find_by_name("Pleasant House Bakery").id


  Restaurant.find(cemitas_puebla_id).menu_items.create([
    { name: "Uno",
      description: "Homemade sesame seed rolls layered with avocado, housemade chipotle sauce, Oaxacan cheese and your choice of filling; on regular or mini bread -includes bottles of chipotle, roja and verde sauce",
      category: "Entree"
    },
    { name: "Dos",
      description: "Homemade sesame seed rolls layered with avocado, housemade chipotle sauce, Oaxacan cheese and your choice of filling; on regular or mini bread -includes bottles of chipotle, roja and verde sauce",
      category: "Entree"
    },
    { name: "Tres",
      description: "Homemade sesame seed rolls layered with avocado, housemade chipotle sauce, Oaxacan cheese and your choice of filling; on regular or mini bread -includes bottles of chipotle, roja and verde sauce",
      category: "Entree"
    },
    { name: "Ceviche - Large",
      description: "Shrimp and tilapia with tomato, cilantro, onion, orange and lime juices",
      category: "Side"
    },
    { name: "Ceviche - Small",
      description: "Shrimp and tilapia with tomato, cilantro, onion, orange and lime juices",
      category: "Side"
    },
    { name: "Jicama Slaw - Small",
      description: "Jicama, carrots and cabbage in a mayo vinegar dressing",
      category: "Side"
    },
    { name: "Jicama Slaw - Large",
      description: "Jicama, carrots and cabbage in a mayo vinegar dressing",
      category: "Side"
    }
  ])

  Restaurant.find(la_pain_quotidien_id).menu_items.create([
    { name: "Sandwich and Salad - Large",
    description: "Assorted sandwiches and choice of salad",
    category: "Entree"
  },
  { name: "Tartine Board - Large",
    description: "Belgian open-faced sandwiches on organic whole-wheat sourdough",
    category: "Entree"
  },
  { name: "Tartine Board - Small",
    description: "Belgian open-faced sandwiches on organic whole-wheat sourdough",
    category: "Entree"
  },
  { name: "Kale Caesar Salad - Large",
    description: "Kale, Parmesan, housemade croutons, hard-boiled egg and caesar dressing served with a basket of organic bread",
    category: "Entree"
  },
  { name: "Kale Caesar Salad - Small",
    description: "Kale, Parmesan, housemade croutons, hard-boiled egg and caesar dressing served with a basket of organic bread",
    category: "Entree"
  },
  { name: "Mini Tarts Board",
    description: "Selection of today's mini tarts",
    category: "Dessert"
  },
  { name: "Homemade Cookie Tray",
    description: "A collections of homemade cookies and seasonal specialty cookies",
    category: "Dessert"
  },
  { name: "Lemonade Iced Tea",
    category: "Beverage"
  },
  { name: "Mint Lemonade",
    category: "Beverage"
  }
  ])

  Restaurant.find(pleasant_house_bakery_id).menu_items.create([
  { name: "Royal Fiver Pie - Chicken Balti",
    description: "Fragrant, mild English-style curry stew with chicken, tomato, and our own blend of fresh-ground spices",
    restaurant_id: pleasant_house_bakery_id,
    category: "Entree"
  },
  { name: "Royal Fiver Pie - Mushroom Kale",
    description: "Lovely mushroom blend with kale in light white wine, parmesan, and cream sauce",
    restaurant_id: pleasant_house_bakery_id,
    category: "Entree"
  },
  { name: "Royal Fiver Pie - Steak and Ale",
    description: "Royally rich, slowly braised stew with tender chunks of steak, local ale, and carrots",
    restaurant_id: pleasant_house_bakery_id,
    category: "Entree"
  },
  { name: "Royal Hibiscus Tea Fizz",
    description: "Royally rich, slowly braised stew with tender chunks of steak, local ale, and carrots",
    restaurant_id: pleasant_house_bakery_id,
    category: "Beverage"
  }
  ])
