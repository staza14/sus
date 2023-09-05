puts "cleaning database"
  Entry.destroy_all
  Post.destroy_all
  ActiveChallenge.destroy_all
  Challenge.destroy_all
  Friendship.destroy_all
  User.destroy_all


puts "Finished Cleaning"
puts "creating users..."
  user1 = User.create!(
    first_name: "Jane",
    last_name: "Smith",
    email: "test@hotmail.com",
    password: "123456",
    overall_score: 12,
    baseline_stats: 44,
    avatar: "avatar1.png"
  )
  user1.save
  user2 = User.create!(
    first_name: "Samuel",
    last_name: "Donker",
    email: "samuel.donker@hotmail.com",
    password: "123456",
    overall_score: 12,
    baseline_stats: 22,
    avatar: "avatar2.png"
  )
  user2.save
  user3 = User.create!(
    first_name: "Samadi",
    last_name: "Patel",
    email: "samadi.patel@hotmail.com",
    password: "123456",
    overall_score: 12,
    baseline_stats: 99,
    avatar: "avatar3.png"
  )
  user3.save
  user4 = User.create!(
    first_name: "Silas",
    last_name: "Woldu",
    email: "silas.woldu@hotmail.com",
    password: "123456",
    overall_score: 12,
    baseline_stats: 22,
    avatar: "avatar4.png"
  )
  user4.save
  user5 = User.create!(
    first_name: "Isaiah",
    last_name: "Deane",
    email: "isaiah.deane@hotmail.com",
    password: "123456",
    overall_score: 12,
    baseline_stats: 99,
    avatar: "avatar5.png"
  )
  user5.save
  user6 = User.create!(
    first_name: "Jade",
    last_name: "Xuan",
    email: "jade.xuan@gmail.com",
    password: "123456",
    overall_score: 26,
    baseline_stats: 55,
    avatar: "avatar6.png"
  )
  user6.save
  user7 = User.create!(
    first_name: "Roberta",
    last_name: "Ferrari",
    email: "roberta.ferrari@gmail.com",
    password: "123456",
    overall_score: 12,
    baseline_stats: 86,
    avatar: "avatar7.png"
  )
  user7.save
  user8 = User.create!(
    first_name: "Wang",
    last_name: "Yi",
    email: "Wang.Yi@gmail.com",
    password: "123456",
    overall_score: 22,
    baseline_stats: 98,
    avatar: "avatar8.png"
  )
  user8.save

  user9 = User.create!(
    first_name: "Charlie",
    last_name: "Chaplin",
    email: "Charlie.Chaplin@gmail.com",
    password: "123456",
    overall_score: 56,
    baseline_stats: 65,
    avatar: "avatar1.png"
  )
  user9.save
  user10 = User.create!(
    first_name: "Olivia",
    last_name: "Taylor",
    email: "Olivia.Taylor@gmail.com",
    password: "123456",
    overall_score: 12,
    baseline_stats: 22,
    avatar: "avatar2.png"
  )
  user10.save
  user11 = User.create!(
    first_name: "Kevin",
    last_name: "Thomas",
    email: "Kevin.Thomas@gmail.com",
    password: "123456",
    overall_score: 12,
    baseline_stats: 22,
    avatar: "avatar3.png"
  )
  user11.save
  user12 = User.create!(
    first_name: "Stella",
    last_name: "Cruz",
    email: "stella.cruz@gmail.com",
    password: "123456",
    overall_score: 12,
    baseline_stats: 12,
    avatar: "avatar4.png"
  )
  user12.save
  user13 = User.create!(
    first_name: "Louise",
    last_name: "Jackson",
    email: "louise.jackson@gmail.com",
    password: "123456",
    overall_score: 12,
    baseline_stats: 22,
    avatar: "avatar5.png"
  )
  user13.save
  user14 = User.create!(
    first_name: "Deji",
    last_name: "Omari",
    email: "deji.omari@gmail.com",
    password: "123456",
    overall_score: 12,
    baseline_stats: 22,
    avatar: "avatar6.png"
  )
  user14.save
  user15= User.create!(
    first_name: "Thadsana",
    last_name: "Young",
    email: "thadsana.young@gmail.com",
    password: "123456",
    overall_score: 12,
    baseline_stats: 22,
    avatar: "avatar7.png"
  )
  user15.save
  user16= User.create!(
    first_name: "Vanessa",
    last_name: "Rosario",
    email: "vanessa.rosario@gmail.com",
    password: "123456",
    overall_score: 12,
    baseline_stats: 22,
    avatar: "avatar8.png"
  )
  user16.save
  user17= User.create!(
    first_name: "Eloise",
    last_name: "Bastien",
    email: "eloise.bastien@gmail.com",
    password: "123456",
    overall_score: 12,
    baseline_stats: 75,
    avatar: "avatar1.png"
  )
  user17.save
  user18= User.create!(
    first_name: "Jose",
    last_name: "rodriguez",
    email: "jose.rodriguez@gmail.com",
    password: "123456",
    overall_score: 12,
    baseline_stats: 35,
    avatar: "avatar2.png"
  )
  user18.save
  user19= User.create!(
    first_name: "Mila",
    last_name: "Ivanov",
    email: "mila.ivanov@gmail.com",
    password: "123456",
    overall_score: 12,
    baseline_stats: 66,
    avatar: "avatar10.png"
  )
  user19.save
  user20= User.create!(
    first_name: "Prash",
    last_name: "Perera",
    email: "prash.perera@gmail.com",
    password: "123456",
    overall_score: 12,
    baseline_stats: 66,
    avatar: "avatar9.png"
  )
  user20.save
puts "Users Created"
puts "creating challenges"
  # Food
  meatless_mondays = Challenge.create(
    name: "Meatless Mondays",
    description: "Take all meat out of your diet every monday for a month. Meatless Mondays is a global movement encouraging people to skip meat every Monday. It promotes health, reduces environmental impact, and supports animal welfare. Participants usually enjoy a broader range of plant-based meals and awareness about sustainable living and dietary choices over the course of a month.",
    summary: "No meat every Monday for 4 weeks",
    category: "Food",
    duration: 4,
    challenge_score: 20,
    badge:"stickers/Plant1.png" ,
    prompt: "Did you eat meat today?"
  )
  moove_the_beef = Challenge.create(
    name: "Moove that beef out your diet",
    description: "Beef production has a substantial environmental footprint. It's a leading driver of deforestation in regions like the Amazon, releases significant greenhouse gases through cattle farming, and requires vast amounts of water and land. The cumulative impact makes beef a major contributor to climate change, biodiversity loss, and resource depletion. As well as its environmental impact, regularly eating beef increases cholestorol",
    summary: "Don't eat any Beef for a week",
    category: "Food",
    duration: 7,
    challenge_score: 20,
    badge:"stickers/Plant2.png",
    prompt: "did you have beef today?"
  )
  Challenge.create(
    name: "Let the veg take over",
    description: "Is meat usually the biggest portion on your plate. If it is then this challenge is for you! In general, we want half our plate to be vegetables, preferably low-calorie, starchy vegetables with a quarter of the plate filled by fiber-rich carbohydrates and/or healthy fats and then the rest of your plate will be protein-rich foods(this is where your meat will be). Benefits of a balanced plate can include: healthy weight management, less body fat, easier muscle building, leaner physique, weight gain prevention",
    summary: "Your meal plate proportion should be 50% veg, 25% fiber-rich carbohydrates and/or healthy fats, 25% protein-rich foods",
    category: "Food",
    duration: 7,
    challenge_score: 20,
    badge:"stickers/Plant3.png",
    prompt: "Do you think you had healthy plate proportions today?"
  )
  # Transport
  Challenge.create(
    name: "Get those legs moving",
    description: "If you live close enough to walk or cycle to your weekly obligations and don't walk or cycle, try starting with one day a week. If you take public transport to work, you could take your bike on public transport to work and cycle back to avoid the sweatiness at work(if that is a worry). ",
    summary: "Once a week, walk or cycle to your weekly obligations",
    category: "Transport",
    duration: 4,
    challenge_score: 20,
    badge:"stickers/Plant4.png",
    prompt: "did you today?"
  )
  Challenge.create(
    name: "Get those legs moving More",
    description: "If you have a trip under 5km that doesn't require you to drive(i.e. food shop), walk or cycle",
    summary: "Walk or cycle every trip under 5km for a month",
    category: "Transport",
    duration: 4,
    challenge_score: 20,
    badge:"stickers/Plant5.png",
    prompt: "If you took a trip under 5km, did you walk or cycle?"
  )
  # Home
  Challenge.create(
    name: "Lights Out",
    description: "For the next week, If there you are leaving a room with nobody else in, turn the light off",
    summary: "Turn off all lights not being actively used",
    category: "Home",
    duration: 7,
    challenge_score: 20,
    badge:"stickers/Plant6.png",
    prompt: "Did you turn off lights that weren't being used(that you know of)?"
  )
  second_hand_sourcing = Challenge.create(
    name: "Second-hand Sourcing",
    description: "For the next month, if you buy any clothes, they should be from a second-hand source. It is as easy as it has ever been to find well kept, fashionable second hand clothing. Look on second hand community apps, thrift stores, charity shops or maybe ask your parents or grandparents if they have anything in their wardrobes. You never know what you might find",
    summary: "Turn off all lights not being actively used",
    category: "Home",
    duration: 7,
    challenge_score: 20,
    badge: "stickers/Plant1.png",
    prompt: "Are you sticking to the challenge?"
  )
  # Combination
  marvelous_mitochondria = Challenge.create(
    name: "Marvelous Mitochondria",
    description: "Are you noticing a drag on your daily energy, feeling sluggish and fatigued? Whatever the external cause may be, it's your mitochondria that are ultimately responsible for your mental and physical energy at the cellular level. Many of the ways we can improve our mitochondrial health often improve your own personal footprint. Diet: try avoiding processed foods, excess sugar and white carbs. Instead eat more antioxidants like blueberries and dark chocolate, a healthy balance of nuts as your go-to snack. Keep active: Try replace some of your shorter trips with walking or cycling. Toxic Products: Sometimes the products we use on a daily basis can contain toxins that can restrict our mitochondria so it might be a good idea to reevaluate your makeup, skincare and cleaning products. Sleep: Make sure you are getting the right amount of sleep!! If you don't practice any of these tips on a regular basis,try implement them one at a time starting with the one you think you will find easiest. We have found the most constructive method is to develop habits over time, the first two weeks are always the hardest, if you miss a day or a period of time, don't be hard on yourself, understand why you didn't and try again. Habits rarely stick the first time",
    summary: "Develop some healthy habits with a slice of saving the planet on the side",
    category: ["Food", "Transport", "Home"],
    duration: 14,
    challenge_score: 7,
    badge:"stickers/Plant2.png",
    prompt: "Did you try at least one healthy habit?"
  )
puts "Challenges Created"
puts "creating posts"
  Post.create!(
    content: "I heard #sus is replacing twitter #imOnBoard #ElonMuskDrools #SusRules #converted",
    user_id: user1.id,
    created_at: "Wed, 23 Aug 2023 09:20:04.000000000 UTC +00:00"
  )
  Post.create!(
    content: "Switched to a reusable water bottle and said goodbye to single-use plastic! 💧💚 #PlasticFree #ReducePlastic #SustainableLiving",
    user_id: user1.id,
    created_at: "Thu, 24 Aug 2023 09:20:04.000000000 UTC +00:00"
  )
  Post.create!(
    content: "Exploring local farmers' markets this weekend to support local growers and reduce my carbon footprint. 🍅🥦🛒 #SupportLocal #SustainableFood #FarmersMarket",
    user_id: user1.id,
    created_at: "Thu, 24 Aug 2023 09:20:04.000000000 UTC +00:00"
  )
  Post.create!(
    content: "I've officially joined the #ZeroWaste movement! It's challenging but incredibly rewarding. Let's minimize our impact on this beautiful planet. 🌍♻️",
    user_id: user1.id,
    created_at: "Thu, 24 Aug 2023 09:20:04.000000000 UTC +00:00"
  )
  # user_id: 2
  Post.create!(
    content: "Just installed solar panels on my roof 🌞💡! Excited to generate clean, renewable energy and reduce my electricity bills. #SolarPower #CleanEnergy #Sustainability",
    user_id: user2.id,
    created_at: "Fri, 25 Aug 2023 09:20:04.000000000 UTC +00:00"
  )
  Post.create!(
    content: "Took my first ride on an electric bike today! So much fun and completely emission-free. 🚴‍♀️🌿 #ElectricBike #GreenTransportation #EcoFriendly",
    user_id: user2.id,
    created_at: "Sat, 26 Aug 2023 09:20:04.000000000 UTC +00:00"
  )
  Post.create!(
    content: "Educating myself on the importance of biodiversity and how I can help protect it. Our planet's rich ecosystems are worth preserving! 🦋🌿 #Biodiversity #Conservation #NatureLovers",
    user_id: user2.id,
    created_at: "Mon, 28 Aug 2023 09:20:04.000000000 UTC +00:00"
  )
  # user_id: 3
  Post.create!(
    content: "Ditching fast fashion and embracing sustainable clothing brands. Quality over quantity! 👚🌱 #SustainableFashion #EthicalClothing #SlowFashion",
    user_id: user3.id,
    created_at: "Mon, 28 Aug 2023 09:20:04.000000000 UTC +00:00"
  )
  Post.create!(
    content: "Just planted a tree in my backyard 🌳❤️! It's a small act, but together, we can make a big difference in combatting climate change. #TreePlanting #ClimateAction #GreenThumb",
    user_id: user3.id,
    created_at: "Wed, 30 Aug 2023 09:20:04.000000000 UTC +00:00"
  )
  Post.create!(
    content: "Joined a local community cleanup event today! Together, we collected tons of litter from our neighborhood park. Let's keep our communities clean and beautiful. 🌍🗑️ #CommunityCleanup #TrashTag #EnvironmentalAction",
    user_id: user3.id,
    created_at: "Wed, 30 Aug 2023 09:20:04.000000000 UTC +00:00"
  )
  Post.create!(
    content: "Just started a kitchen herb garden 🌿🪴 to reduce the need for store-bought herbs wrapped in plastic. It's amazing how small changes can add up to a greener lifestyle. #HerbGarden #SustainableLiving #GrowYourOwn",
    user_id: user3.id,
    created_at: "Fri, 01 Sep 2023 11:03:04.000000000 UTC +00:00"
  )
  # user_id: 4
  Post.create!(
    content: "Exploring the world of meatless meals! Trying out new vegetarian and vegan recipes to cut down on my carbon footprint. 🥦🍽️ #MeatlessMonday #PlantBased #ClimateFriendly",
    user_id: user4.id,
    created_at: "Wed, 29 Aug 2023 09:20:04.000000000 UTC +00:00"
  )
  Post.create!(
    content: "Opted for a reusable shopping bag today instead of a disposable one. Let's keep plastic out of our oceans and landfills. 🛍️🌊 #ReusableBag #PlasticFreeJuly #Sustainability",
    user_id: user4.id,
    created_at: "Wed, 23 Aug 2023 09:20:04.000000000 UTC +00:00"
  )
  Post.create!(
    content: "Investing in energy-efficient appliances for my home to save both money and the planet! 💡🏡 #EnergyEfficiency #GreenHome #SaveEnergy",
    user_id: user4.id,
    created_at: "Wed, 23 Aug 2023 09:20:04.000000000 UTC +00:00"
  )
  # user_id: 5
  Post.create!(
    content: "Took my first step towards reducing single-use plastic by using a bamboo toothbrush 🎋🦷! Small swaps, big impact. #PlasticFreeLiving #EcoDentistry #BambooToothbrush",
    user_id: user5.id,
    created_at: "Wed, 23 Aug 2023 09:20:04.000000000 UTC +00:00"
  )
  Post.create!(
    content: "Inspired by the zero-waste lifestyle, I've started making my own cleaning products at home. It's easy, affordable, and eco-friendly! 🌿🧼 #ZeroWasteCleaning #DIYCleaning #GreenHome",
    user_id: user5.id,
    created_at: "Wed, 23 Aug 2023 09:20:04.000000000 UTC +00:00"
  )
  # user_id: user6.id
  Post.create!(
    content: "Every drop counts! Fixing leaks in my home to conserve water. Let's be mindful of our water usage. 💧💚 #WaterConservation #FixALeak #SustainableLiving",
    user_id: user6.id,
    created_at: "Wed, 23 Aug 2023 09:20:04.000000000 UTC +00:00"
  )
  Post.create!(
    content: "Joined a local environmental advocacy group to amplify my impact and fight for a healthier planet. Together, we're a force to be reckoned with! 🌍🌿 #EnvironmentalAdvocacy #CommunityAction #GreenChange",
    user_id: user6.id,
    created_at: "Wed, 23 Aug 2023 09:20:04.000000000 UTC +00:00"
  )
  Post.create!(
    content: "Choosing eco-friendly office supplies for my home workspace. It's a simple way to reduce my environmental footprint while working remotely. 🖇️🌱 #EcoOffice #SustainableWorkplace #RemoteWork",
    user_id: user6.id,
    created_at: "Wed, 23 Aug 2023 09:20:04.000000000 UTC +00:00"
  )
  Post.create!(
    content: "Made the switch to a green energy provider 💚🔌! Now, my electricity comes from renewable sources, reducing my carbon emissions. #GreenEnergy #RenewablePower #ClimateAction",
    user_id: user6.id,
    created_at: "Wed, 23 Aug 2023 09:20:04.000000000 UTC +00:00"
  )
  # user_id: user7.id
  Post.create!(
    content: "Embarking on a 'no-buy' challenge for the next month. No unnecessary purchases to minimize waste and simplify life. 💸🌍 #NoBuyChallenge #SustainableLiving #Minimalism",
    user_id: user7.id,
    created_at: "Wed, 23 Aug 2023 09:20:04.000000000 UTC +00:00"
  )
  Post.create!(
    content: "Supporting eco-conscious brands that prioritize sustainability and ethical practices in their products. Our choices matter! 🌿🛍️ #EcoFriendlyProducts #ShopEthical #ConsciousConsumer",
    user_id: user7.id,
    created_at: "Wed, 23 Aug 2023 09:20:04.000000000 UTC +00:00"
  )
  Post.create!(
    content: "Reducing food waste by planning meals carefully and composting any food scraps. Let's make the most of the food we have! 🍴🌱 #FoodWasteReduction #MealPlanning #EcoKitchen",
    user_id: user7.id,
    created_at: "Wed, 23 Aug 2023 09:20:04.000000000 UTC +00:00"
  )
  Post.create!(
    content: "Exploring the world of upcycling! Turning old furniture and clothing into something new and beautiful. 🪑✂️ #Upcycling #SustainableCrafts #DIY",
    user_id: user7.id,
    created_at: "Wed, 23 Aug 2023 09:20:04.000000000 UTC +00:00"
  )
  Post.create!(
    content: "Taking shorter showers 🚿 and using a shower timer to conserve water. Every minute counts when it comes to water conservation. 💧⏳ #ShorterShowers #WaterSavings #EcoBathroom",
    user_id: user7.id,
    created_at: "Wed, 23 Aug 2023 09:20:04.000000000 UTC +00:00"
  )
  Post.create!(
    content: "Just volunteered at a local park cleanup event. It's heartwarming to see so many people coming together to care for our environment. 🌿🗑️ #VolunteerCleanup #CommunityAction #GreenHeroes",
    user_id: user7.id,
    created_at: "Wed, 23 Aug 2023 09:20:04.000000000 UTC +00:00"
  )
  Post.create!(
    content: "Starting a neighborhood garden swap program 🌽🍅 where we share excess produce from our gardens. Less waste, more community connection! #GardenSwap #CommunityGardening #ShareTheHarvest",
    user_id: user7.id,
    created_at: "Fri, 01 Sep 2023 09:20:04.000000000 UTC +00:00"
  )
  Post.create!(
    content: "Educating myself about the environmental impact of fast fashion and making a commitment to buy less and choose sustainable clothing options. 🌍👗 #SlowFashion #SustainableStyle #FashionRevolution",
    user_id: user7.id,
    created_at: "Wed, 23 Aug 2023 09:20:04.000000000 UTC +00:00"
  )
  # user_id: user8.id
  Post.create!(
    content: "Just learned about the importance of reducing my carbon footprint. Starting with carpooling and public transport to cut down on emissions. 🚗🌍 #Carpooling #PublicTransport #ClimateAction",
    user_id: user8.id,
    created_at: "Wed, 23 Aug 2023 09:20:04.000000000 UTC +00:00"
  )
  Post.create!(
    content: "Committed to turning off lights and electronics when not in use. Saving energy is a simple yet impactful way to combat climate change. 💡🌿 #EnergySaving #GreenHabits #ReduceEmissions",
    user_id: user8.id,
    created_at: "Wed, 23 Aug 2023 09:20:04.000000000 UTC +00:00"
  )
  # user_id: user10.id
  Post.create!(
    content: "Just knowing who Elon Musk is, is the worst thing that has ever happened to me and now he wants to call the platform he ruined 'X'.DESPICABLE.DELETING.RIGHT.NOW! #ElonMuskDrools #SusRules #converted",
    user_id: user10.id,
    created_at: "Wed, 23 Aug 2023 09:20:04.000000000 UTC +00:00"
  )
  Post.create!(
    content: "Just started composting in my backyard! It's a small step, but every bit counts when it comes to reducing food waste. 🌱🍂 #Composting #ReduceWaste #EcoFriendly",
    user_id: user10.id,
    created_at: "Fri, 01 Sep 2023 12:17:04.000000000 UTC +00:00"
  )
  Post.create!(
    content: "I can't help but shake my head at Elon Musk's carbon footprint. 🌍👣 His rocket launches and electric cars are not cool, and what about the environmental impact? #CarbonFootprint #EnvironmentFirst",
    user_id: user10.id,
    created_at: "Fri, 01 Sep 2023 12:00:04.000000000 UTC +00:00"
  )
  Post.create!(
    content: "Elon Musk talks a big game about space exploration and electric vehicles, but what about the energy and resources these projects consume? 🚀⚡️ #SustainabilityMatters #EnvironmentalConcerns",
    user_id: user10.id,
    created_at: "Wed, 23 Aug 2023 09:20:04.000000000 UTC +00:00"
  )
  Post.create!(
    content: "As a middle-class woman trying to reduce my own carbon footprint, it's frustrating to see Elon Musk's ventures consuming so much energy. 🌿💡 We all need to do our part for the planet. #ClimateAction #GreenLiving",
    user_id: user10.id,
    created_at: "Wed, 23 Aug 2023 09:20:04.000000000 UTC +00:00"
  )
  Post.create!(
    content: "I'm all for innovation, but Elon Musk's obsession with Mars colonization seems misplaced when we have urgent environmental issues on Earth to address. 🌎🚀 #EarthFirst #ClimateChange",
    user_id: user10.id,
    created_at: "Fri, 1 Aug 2023 09:20:04.000000000 UTC +00:00"
  )
  Post.create!(
    content: "Elon Musk may be a billionaire, but that doesn't mean he gets a pass on his environmental responsibility. Let's hold him accountable for the carbon emissions associated with his projects. 🌱💰 #Accountability #ClimateActionNow",
    user_id: user10.id,
    created_at: "Wed, 23 Aug 2023 09:20:04.000000000 UTC +00:00"
  )
  Post.create!(
    content: "Just found out who Jeff Bezos is.I.AM.FUMING. #EducateTheYoung #OnlyTheyCanSaveUsNow #DoYouKnowJeffIs?",
    user_id: user10.id,
    created_at: "Wed, 23 Aug 2023 09:20:04.000000000 UTC +00:00"
  )
  Post.create!(
    content: "Jeff Bezos is one of the richest people on the planet, yet Amazon's packaging waste is astounding! 📦🌍 We need corporate responsibility and sustainability, not just profits. #SustainabilityMatters #ReduceWaste",
    user_id: user10.id,
    created_at: "Wed, 23 Aug 2023 09:20:04.000000000 UTC +00:00"
  )
  Post.create!(
    content: "While Jeff Bezos donates to charitable causes, the wealth disparity in this country continues to widen. Philanthropy is important, but systemic change is needed. 🌍💰 #IncomeInequality #SocialJustice",
    user_id: user10.id,
    created_at: "Wed, 23 Aug 2023 09:20:04.000000000 UTC +00:00"
  )
  Post.create!(
    content: "As a middle-class consumer, I'm concerned about Amazon's monopoly and its impact on local businesses. Jeff Bezos's empire has a social and economic toll. 🏪💼 #SupportLocal #SmallBusinessesMatter",
    user_id: user10.id,
    created_at: "Wed, 23 Aug 2023 09:20:04.000000000 UTC +00:00"
  )
  # user_id: user9.id
  Post.create!(
    content: "Just found out global warming is a thing 🤯 It's like a silent film, but with dire consequences for our world 🌍🌿 #ClimateChangeAwareness #ChaplinCares",
    user_id: user9.id,
    created_at: "Fri, 01 Sep 2023 12:02:04.000000000 UTC +00:00"
  )
  Post.create!(
    content: "Chaplin's got a new act! 🎩 Just realized the Earth needs our help, and it's not a comedy. Time to take action and protect our beautiful planet. 🌞🌎 #ClimateAction #ChaplinGoesGreen",
    user_id: user9.id,
    created_at: "Wed, 23 Aug 2023 09:20:04.000000000 UTC +00:00"
  )
  Post.create!(
    content: "Imagine the world as a silent film, without the harmony of nature. 😢 Let's dance to a different tune and preserve the Earth for generations to come. 🌏🎶 #ClimateAwareness #ChaplinOnClimate",
    user_id: user9.id,
    created_at: "Wed, 23 Aug 2023 09:20:04.000000000 UTC +00:00"
  )
  Post.create!(
    content: "Life was so much easier when everything was simply black and white 😔🕰️ #ClimateAnxiety #TheGoodOldDays",
    user_id: user9.id,
    created_at: "Wed, 23 Aug 2023 09:20:04.000000000 UTC +00:00"
  )
  # user 11
  Post.create!(
    content: "I know climate change is bad an all but i'm loving this sun #BunsOut #JustStopJustStopOil",
    user_id: user11.id,
    created_at: "Fri, 01 Sep 2023 11:03:04.000000000 UTC +00:00"
  )
puts "Posts Created"
puts "Creating Friendships"
  Friendship.create!(
    confirmed: true,
    asker_id: user1.id,
    receiver_id: user9.id
  )
  Friendship.create!(
    confirmed: true,
    asker_id: user1.id,
    receiver_id: user10.id
  )
  Friendship.create!(
    confirmed: true,
    asker_id: user1.id,
    receiver_id: user2.id
  )
  Friendship.create!(
    confirmed: true,
    asker_id: user1.id,
    receiver_id: user3.id
  )
  Friendship.create!(
    confirmed: true,
    asker_id: user1.id,
    receiver_id: user4.id
  )
  Friendship.create!(
    confirmed: true,
    asker_id: user1.id,
    receiver_id: user5.id
  )
  Friendship.create!(
    confirmed: true,
    asker_id: user1.id,
    receiver_id: user6.id
  )
  # Janes Friends by user variable: 2,3,4,5,6,9,10
puts "Friendships Created"
puts "creating entries"
  Entry.create!(
    food_score: 0.5,
    travel_score: 0.4,
    home_score: 0.9,
    created_at: "Wed, 23 Aug 2023 09:20:04.000000000 UTC +00:00",
    user_id: user1.id
  )
  Entry.create!(
    food_score: 0.3,
    travel_score: 0.4,
    home_score: 1,
    created_at: "Thu, 24 Aug 2023 09:27:04.000000000 UTC +00:00",
    user_id: user1.id
  )
  Entry.create!(
    food_score: 0.8,
    travel_score: 0.6,
    home_score: 0.9,
    created_at: "Fri, 25 Aug 2023 09:29:04.000000000 UTC +00:00",
    user_id: user1.id
  )
  Entry.create!(
    food_score: 0.3,
    travel_score: 0,
    home_score: 0.4,
    created_at: "Sat, 26 Aug 2023 08:58:04.000000000 UTC +00:00",
    user_id: user1.id
  )
  Entry.create!(
    food_score: 0.6,
    travel_score: 0.2,
    home_score: 0.8,
    created_at: "Sun, 27 Aug 2023 09:02:72.000000000 UTC +00:00",
    user_id: user1.id
  )
  Entry.create!(
    food_score: 0.3,
    travel_score: 0,
    home_score: 0.4,
    created_at: "Mon, 28 Aug 2023 09:31:04.000000000 UTC +00:00",
    user_id: user1.id
  )
  Entry.create!(
    food_score: 0.6,
    travel_score: 0.2,
    home_score: 0.8,
    created_at: "Tue, 29 Aug 2023 09:45:04.000000000 UTC +00:00",
    user_id: user1.id
  )
  Entry.create!(
    food_score: 0.7,
    travel_score: 0.4,
    home_score: 0.8,
    created_at: "Wed, 30 Aug 2023 09:45:04.000000000 UTC +00:00",
    user_id: user1.id
  )
  Entry.create!(
    food_score: 0.6,
    travel_score: 0.5,
    home_score: 0.7,
    created_at: "Thu, 31 Aug 2023 09:00:04.000000000 UTC +00:00",
    user_id: user1.id
  )
  Entry.create!(
    food_score: 0.8,
    travel_score: 0.6,
    home_score: 0.8,
    created_at: "Fri, 01 Sep 2023 09:05:04.000000000 UTC +00:00",
    user_id: user1.id
  )
  # User_id: 2
  Entry.create!(
    food_score: 0.1,
    travel_score: 0.4,
    home_score: 0.5,
    created_at: "Fri, 25 Sep 2023 09:20:04.000000000 UTC +00:00",
    user_id: user2.id
  )
  Entry.create!(
    food_score: 0.4,
    travel_score: 0.5,
    home_score: 0.5,
    created_at: "Sat, 26 Sep 2023 09:27:04.000000000 UTC +00:00",
    user_id: user2.id
  )
  Entry.create!(
    food_score: 0.3,
    travel_score: 0.7,
    home_score: 0.6,
    created_at: "Sun, 27 Sep 2023 09:29:04.000000000 UTC +00:00",
    user_id: user2.id
  )
  Entry.create!(
    food_score: 0.4,
    travel_score: 0.6,
    home_score: 0.5,
    created_at: "Mon, 28 Sep 2023 09:29:04.000000000 UTC +00:00",
    user_id: user2.id
  )
  Entry.create!(
    food_score: 0.3,
    travel_score: 0.7,
    home_score: 0.4,
    created_at: "Tue, 29 Sep 2023 09:29:04.000000000 UTC +00:00",
    user_id: user2.id
  )
  Entry.create!(
    food_score: 0.2,
    travel_score: 0.2,
    home_score: 0.3,
    created_at: "Wed, 30 Aug 2023 09:45:04.000000000 UTC +00:00",
    user_id: user2.id
  )
  Entry.create!(
    food_score: 0.3,
    travel_score: 0.3,
    home_score: 0.3,
    created_at: "Thu, 31 Aug 2023 09:00:04.000000000 UTC +00:00",
    user_id: user2.id
  )
  Entry.create!(
    food_score: 0.2,
    travel_score: 0.3,
    home_score: 0.4,
    created_at: "Fri, 01 Sep 2023 09:05:04.000000000 UTC +00:00",
    user_id: user2.id
  )
puts "Entries Created"
puts "Creating Active Challenges"
  ActiveChallenge.create(
    completed: false,
    user_id: user1.id,
    challenge_id: marvelous_mitochondria.id
  )
  ActiveChallenge.create(
    completed: false,
    user_id: user2.id,
    challenge_id: marvelous_mitochondria.id
  )
  ActiveChallenge.create(
    completed: false,
    user_id: user9.id,
    challenge_id: marvelous_mitochondria.id
  )
  ActiveChallenge.create(
    completed: false,
    user_id: user5.id,
    challenge_id: marvelous_mitochondria.id
  )
  ActiveChallenge.create(
    completed: false,
    user_id: user1.id,
    challenge_id: meatless_mondays.id
  )
  ActiveChallenge.create(
    completed: false,
    user_id: user3.id,
    challenge_id: meatless_mondays.id
  )
  ActiveChallenge.create(
    completed: false,
    user_id: user7.id,
    challenge_id: meatless_mondays.id
  )
  ActiveChallenge.create(
    completed: false,
    user_id: user8.id,
    challenge_id: meatless_mondays.id
  )
  ActiveChallenge.create(
    completed: false,
    user_id: user10.id,
    challenge_id: meatless_mondays.id
  )
  ActiveChallenge.create(
    completed: false,
    user_id: user8.id,
    challenge_id: moove_the_beef.id
  )
  ActiveChallenge.create(
    completed: false,
    user_id: user1.id,
    challenge_id: second_hand_sourcing.id
  )
  ActiveChallenge.create(
    completed: false,
    user_id: user9.id,
    challenge_id: second_hand_sourcing.id
  )
  ActiveChallenge.create(
    completed: false,
    user_id: user6.id,
    challenge_id: second_hand_sourcing.id
  )
puts "Active Challenges Created"
puts "Finished Seeding"
