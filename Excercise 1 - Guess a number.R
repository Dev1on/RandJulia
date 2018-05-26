print("WELCOME TO GUESSING A NUMBER")
print("You have to guess a number between 1 and 100")
print("You have 3 tries!")

tries <- 0
maxGuesses <- 10
numberToGuess <- sample(1:100, 1)
guessed <- -1


while(guessed != numberToGuess) {
	guessed <- readline(prompt="Your number:")
	tries = tries + 1
	
	if(guessed == numberToGuess) {
		print("Successfully guessed the correct number!")
		break
	} else {
		if(tries == maxGuesses) {
			print("Oh! I am sorry! But you ran out of tries")
			break
		} else {
			sprintf("Current try: %s", tries)
			if(guessed < numberToGuess) {
				print("Your number is lower than the actual number. Try again.")
			} else {
				print("Your number is bigger than the actual number. Try again.")	
			}
		}
	}
}