extends Node2D

var intro = [
	"You approach the cursed temple with a torch in hand and a bag full of nutritious snacks, for even adventurers get a little peckish.",
	"The legends of this place speak of countless adventurers never being seen again, so there must be some incredible loot in here.",
	"As you creep up to the looming archway, you get a glimpse of the ancient stone door across the antechamber.",
	"You pass through the crumbling arch and take in the cracked mossy walls, strangely patterned floor, and barely stable-looking ceiling.",
	"To your astonishment, you notice an unexpectedly less ancient keypad on the door. Surely that isn't the original design?", 
	"Strangeness aside, you decide the door is far too intriguing to turn back now.",
	"Will you crack the code and be rewarded with riches beyond your measly imagination?",
	]
	
var outro = [
	"The door groaned as it slid open.",
	"You finally did it! You guessed the code ",
	"You make your way through the door and are presented with a long staircase decending deep into the darkness.",
	"With your torch in hand (that you had the whole time remember?) you begin the long journey down.",
	"Who knows what else this exciting adventure will bring.",
	"Hopefully treasure, but you'll just have to wait and see..."
	]

var flavortext = {
	0: [
		"You hear a loud rumbling coming from above you.",
		"The entire room is shaking. As you look up, you notice cracks branching out of the stone in the ceiling.",
		"'It seems the gods were hungry for pancakes today', you think.",
		"The weakened stones finally give way and an avalanche flattens you into ground meat, and everything goes dark again.",
		"And when you wake up on the floor once again, you simply stand up and stretch out those uncrushed limbs of yours.",
		"Time to give it another go.",
		"A small itch in the back of your brain tells you that your last guess of "
		],
	1: [
		"Darkness begins to slowly fill the room, shawdows thickening until you can't find the exit behind you.",
		"The air is thinning, each breath you take shorter than the last.",
		"It quickly becomes so dark you can't even see your own legs beneath you.",
		"And then you can't feel those legs anymore either.",
		"It feels like you are only a spec of dust floating in the unknown, with no body or sense of direction. Until a large wall slams into your face, confirming that you are no longer a spec of dust.",
		"You open your eyes to see it is not a wall but the floor, two millimeters from your eyeballs.",
		"You roll over and get up, brushing off the dampness from the moss and make your way back to the locked door.",
		"A little spark flickers in your mind, an indication that your guess of "
		],
	2: [
		"As spears pierce your flesh, the pain grips your consciousness as they stick out of your right side.",
		"...Really?","
		Spears again? Unbelievable.",
		"Your eyelids, too heavy to keep open, close and plunge you into darkness yet again.",
		"And just as the last flicker of life fades, you awaken once again, on your favorite cold and damp floor.",
		"But you must continue if you want that treasure, so you get up.",
		"An annoying sense of doubt pricks at your consciousness, revealing that your last guess of "
		],
	3: [
		"The sound of scraping metal screeches behind you.",
		"You spin around just in time to see the cartoonishly large axe swing down from the ceiling as it buries itself into your chest.",
		"That wasn't there before...was it?",
		"As you hang from the blade that impales you, your organs slowly shut down.",
		"You succumb to the gentle abyss of death...",
		"Just kidding!",
		"Gasping for breath, you find your lungs are no longer punctured as you get off the floor.",
		"Echoes from the abyss still ring in your mind that your guess of "
		],
	4: [
		"Your body suspends in the air for only a milisecond as the floor drops out beneath you.",
		"Time slows as the spikes emerge and gravity brings you closer to your doom.",
		"You finally collide with several pointy objects, giving you some fashionable new body piercings.",
		"The blood and life force drains out of your body so slowly that you decide to pass the time counting the cracks in the wall.",
		"37...38...39...",
		"You blink and find yourself faced with the stone floor again.",
		"And the only piercings that remain are the three you came in with.",
		"With every death the whispers grow stronger. Your gut tells you your last guess of "
		],
	5: [
		"The door in front of you shimmers and vanishes into the air, causing you to stumble backwards in surpise.",
		"The air settles revealing an adjacent room filled with gems!",
		"Your jaw is on the floor. What a score! ",
		"You dash forward towards the treasure with incredible speed.",
		"...and smack your face into where the door used to be.",
		"Or rather...still is.",
		"Clutching your throbbing head, you open one eye and watch the treasure vanish and the door reappear.",
		"Your vision clouds with darkness as you fall to your knees.",
		"You hit your head VERY hard.",
		"When the dizziness becomes too much, you fall to the ground and black out completely.",
		"Within seconds you wake up with only the fleeting ghost of a headache.",
		"Welp. Back to it. You just know that "
		],
	6: [
		"For a moment nothing happens, and you brace yourself for whatever misery awaits.",
		"Another moment passes and still nothing happens.",
		"But as you reach your hand forward to try the code again, vines shoot up from the ground and wrap around your arm!","
		You try to take a step back but you can't, because there are vines around your ankles now too.",
		"They continue wrapping around your entire body, pulling you down to the floor and squeezing out your last breath.",
		"When you finally breathe in again, the vines are nowhere to be found.",
		"Ready to try again? you have a feeling the last guess of "
		],
	7: [
		"You don't even have time to think before an elecric shock rips through your body and roasts your brain like a marshmallow.",
		"It was over so quick, you still feel dazed as you sit up from the floor.",
		"Well that wasn't right, "
		],
	8: [
		"Not even a second after you press the last button does the axe swing down again.",
		"And don't think you dodged it this time, that thing is crazy fast.",
		"Sliced in half, you fall to the floor, one half at a time.",
		"Wake up and try again, you know you will. You have a feeling that "
		],
	9: [
		"Something sharp pierces your back. Multiple somethings actually.",
		"You look behind you...",
		"...and find three spears poking out of your spine like you're some kind of dinosaur.",
		"How many spears does this place have?",
		"You don't last long after getting impaled, but you come back good as new.",
		"And with only vague nightmares of human-shaped pincushions.",
		"Looks like "
		],
	10: [
		"Spears shoot out of the wall to your left, thrice impaling you for your ignorance.",
		"The world goes black as you bleed out on the floor.",
		"But as your consciousness fades, you are overwhelmed by a peculiar feeling...",
		"marine",
		"You wake up in the middle of the room sprawled out on the floor, with a curious lack of stab wounds.",
		"Perhaps the gods of this place have given you another chance?",
		"Well, better not waste it then.",
		"You start to make your way towards the cursed archway to leave this forsaken place forever...but after a few steps your feet stop.",
		"You don't want to leave.",
		"You want the treasure.",
		"You spin around and sprint back towards the locked door!",
		"You can feel in your toes just how close you are to gaining entry, and you have the strange inclination that your last guess of "
		]
	}

func get_intro() -> Array:
	return intro

func get_death_event(numattempts : int, guessval: int, guessverdict: String) -> Array:
	var temp_event = []
	var temp_id
	if guessval == 0:
		# guess wasn't a 4 digit number
		temp_event = ["Invalid input, enter a number you buffoon."]
		temp_id = 12
		return [temp_event, str(temp_id)]
	else:
		if numattempts == 0:
			temp_event = flavortext[10]
			temp_event[3] = "The number you guessed " + guessverdict
			temp_event[temp_event.size() - 1] += str(guessval)
			temp_event[temp_event.size() - 1] += guessverdict
			if guessverdict == "was too low":
				temp_id = 10
			elif guessverdict == "was too low":
				temp_id = 11
			return [temp_event, str(temp_id)]
		elif numattempts > 0 and numattempts <= 10:
			temp_event = flavortext[numattempts-1]
			temp_event[temp_event.size() - 1] += str(guessval)
			temp_event[temp_event.size() - 1] += guessverdict
			temp_id = numattempts
			return [temp_event, str(temp_id)]
		else: # when numattemps > 10
			while temp_id != 10:
				temp_id = flavortext.keys().pick_random()
			temp_event = flavortext[temp_id]
			temp_event[temp_event.size() - 1] += str(guessval)
			temp_event[temp_event.size() - 1] += guessverdict
			return [temp_event, str(temp_id)]
	# end of get_death_event

func get_win_event(numattempts : int, guessval: int) -> Array:
	var temp_event = outro
	var temp_customstr = str(guessval) + " after dying " + str(numattempts) + " times."
	temp_event[1] += temp_customstr
	return temp_event
