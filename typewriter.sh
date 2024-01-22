#!/bin/bash

clear

while true; do
	typed=""
	while true; do
		IFS="" read -rsn1 char # Read a single character silently (-rsn1)

		# Check if Backspace key is pressed
		if [[ "$char" == $'\x7f' ]]; then
			# Handle backspace by removing the last character from the typed string
			typed="${typed%?}"
		elif [[ "$char" == '' ]]; then
			# Check if Enter key is pressed
			break
		else
			typed="$typed$char" # Concatenate the characters
		fi

		# Get terminal dimensions
		cols=$(tput cols)

		# Check if the length of the typed text exceeds the number of columns
		if ((${#typed} > cols)); then
			# Truncate the typed text to fit within the terminal width
			typed="${typed:0:cols}"
		fi

		clear # Clear the screen

		# Get terminal dimensions again (in case the terminal was resized)
		cols=$(tput cols)
		rows=$(tput lines)

		# Calculate the position to center the text
		col_pos=$(((cols - ${#typed}) / 2))
		row_pos=$((rows / 2))

		# Move the cursor to the center and display the typed text
		tput cup $row_pos $col_pos
		echo -n "$typed"
	done

	# Clear the screen after processing the Enter key
	clear
done
