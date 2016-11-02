NBA = {
	teams: {
		California: ["GSW Warriors", "LA Lakers", "LA Clippers"],
		New_York: ["NY Knicks"],
		Texas: ["San Antonio Spurs", "Dallas Mavericks", "Houston Rockets"]
	},
	ticket_cost: {
		floor_seats: 1000,
		nose_bleed: 40,
		mid_level: 100
	},
	all_stars: {
		east: {
		guards: ["Dwyane Wade", "Carmelo Anthony", "Kyle Lowry"],
		centers: ["Andre Drummond", "Pau Gasol", "Al Horford"],
		forwards: ["Lebron James", "Paul George", "Carmelo Anthony"],
		starters: ["Kyle Lowry", "Dwyane Wade", "LeBron James", "Paul George", "Carmelo Anthony"]
	},
		west: {
		guards: ["Kobe Bryant", "James Harden", "Chris Paul", "Klay Thompson"],
		centers: ["Anthony Davis", "DeMarcus Cousins"],
		forwards: ["Kevin Durant", "Kawhi Leonard", "Draymond Green", "LaMarcus Aldridge"]
		}
	}
}

puts "specific team within a state: "

p NBA[:teams][:Texas][1]

puts "ticket cost array: "

p NBA[:ticket_cost]

puts "ticket cost for mid_level seats: "

p NBA[:ticket_cost][:mid_level]

puts "list the western all star forwards"

p NBA[:all_stars][:west][:forwards]

puts "print 'Kobe Bryant': "

p NBA[:all_stars][:west][:guards][0]

puts "add 'Stephen Curry' to west all-star team guards and print the updated guards roster: " 

NBA[:all_stars][:west][:guards].push("Stephen Curry")


p NBA[:all_stars][:west][:guards]

puts "replace Kyle Lowry on east all-star team starters with John Wall, and print updated roster :"
puts "current roster:"
p NBA[:all_stars][:east][:starters]

NBA[:all_stars][:east][:starters][0] = "John Wall"
puts "after update: "
p NBA[:all_stars][:east][:starters]

