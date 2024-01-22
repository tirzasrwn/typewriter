# typewriter

This simple Bash script creates a typewriter-like effect in the terminal, allowing users to type text that is centered on the screen. The script continuously clears the terminal and centers the typed text until the user presses the Enter key.

## How to Use

1. Save the script to a file, for example, `typewriter.sh`.
2. Give execute permissions to the script:

```sh
chmod +x typewriter.sh
```

3. Run the script:

```sh
./typewriter.sh
```

## Features

- **Backspace Support**: Users can use the backspace key to delete characters from the typed text.
- **Dynamic Width Handling**: The script adjusts to the terminal width, ensuring that the typed text is truncated if it exceeds the available space.
- **Continuous Typing**: The script runs in an infinite loop, allowing users to type and clear the screen repeatedly.

## Dependencies

- **Bash**: The script is written in Bash and requires a Bash-compatible shell to run.
- **tput**: Terminal control is achieved using the `tput` command, so ensure it is available in your environment.

## Notes

- To exit the script, use `Ctrl+C` to interrupt the infinite loop.

Feel free to customize and enhance the script according to your preferences or specific use cases.
