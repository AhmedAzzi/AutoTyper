# AutoTyper

AutoTyper is a simple automation script designed to read answers from a file and simulate typing them into an input field. It uses `xdotool` to simulate keyboard input, making it useful for automating repetitive typing tasks.

## Features

- Reads answers from a specified file (default: `answers.txt`).
- Simulates typing each line from the file.
- Adds blank lines where necessary.
- Includes a delay to allow users to focus on the input field before typing begins.

## Requirements

- Linux operating system.
- `xdotool` installed on your system.
- `sudo apt install xdotool`

## Usage

1. **Prepare the answers file**:
   - Create or edit the `answers.txt` file to include the text you want to type. Each line represents a separate input.

2. **Run the script**:
   - Open a terminal and navigate to the project directory.
   - Execute the script:
     ```bash
     ./write_answers.sh
     ```
   - Optionally, specify a custom file as an argument:
     ```bash
     ./write_answers.sh custom_file.txt
     ```

3. **Focus on the input field**:
   - The script waits for 5 seconds before typing begins. Use this time to focus on the desired input field.
