
# Shell Scripting Projects and Documentation

## Overview

This repository is a comprehensive collection of shell scripting projects, ranging from beginner to advanced levels. Each project is designed to demonstrate various aspects of shell scripting, including file management, process automation, system monitoring, and more.

## Repository Structure

- **/first-shell-script/**: Contains the initial shell script project that demonstrates creating, compiling, and executing C++ files using a shell script.
- **/advanced-projects/**: (Future) Will contain more complex and advanced shell scripting projects.

## Project: First Shell Script

### Objective

The first shell script in this repository automates the process of creating, writing, compiling, and running simple C++ programs. It demonstrates the basic principles of file creation and manipulation using shell commands, as well as how to execute system commands to compile and run C++ code.

### Files Included

- `name.cpp`: A C++ file that prints "Ayush Poudel".
- `country.cpp`: A C++ file that prints "Nepal".
- `first_shell_script.sh`: A shell script that automates the creation, compilation, and execution of the above C++ files.
- `print_name`: The compiled binary for `name.cpp`.
- `print_country`: The compiled binary for `country.cpp`.

### How It Works

1. **Creating C++ Files**: The script starts by creating two C++ files using the `touch` command.

2. **Writing C++ Code**: It writes simple C++ programs into these files using `echo`.

3. **Compiling the Files**: The C++ files are then compiled using `g++` to create executable binaries.

4. **Executing the Binaries**: Finally, the script runs the compiled binaries, printing "Ayush Poudel" and "Nepal" to the console.

### How to Run

1. Clone the repository:

   ```bash
   git clone https://github.com/yourusername/Shell-Scripting-Projects-and-Documentation.git
   ```

2. Navigate to the project directory:

   ```bash
   cd Shell-Scripting-Projects-and-Documentation/first-shell-script
   ```

3. Make the shell script executable:

   ```bash
   chmod +x first_shell_script.sh
   ```

4. Run the script:

   ```bash
   ./first_shell_script.sh
   ```

This will create, compile, and execute the C++ files, displaying the output directly in the terminal.

## Future Projects

This repository will be continuously updated with more advanced shell scripting projects. These projects will cover topics such as:

- System monitoring and reporting
- Backup and recovery automation
- Network operations and security scripts
- Scripting for DevOps tasks
- Advanced file manipulation and processing

## Contributing

Contributions are welcome! If you have ideas for new projects or improvements to existing ones, feel free to open an issue or submit a pull request.

## License

This repository is licensed under the MIT License. See the [LICENSE](LICENSE) file for more details.

---

This repository is an ongoing project aimed at helping others learn and master shell scripting. Whether you're a beginner or an experienced scripter, you'll find useful resources and challenges to enhance your scripting skills.
