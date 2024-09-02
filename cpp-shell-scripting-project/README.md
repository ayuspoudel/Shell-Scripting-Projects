# First Shell Script Project

This project demonstrates the creation, compilation, and execution of simple C++ programs using a shell script. The shell script automates the process of writing, compiling, and running two C++ programs that print a name and a country name, respectively.

## Project Structure

The project contains the following files:

- `name.cpp`: A C++ file that prints "Ayush Poudel".
- `country.cpp`: A C++ file that prints "Nepal".
- `first_shell_script.sh`: A shell script that automates the process of creating, compiling, and executing the above C++ files.
- `print_name`: The compiled binary for `name.cpp`.
- `print_country`: The compiled binary for `country.cpp`.

## Shell Script Details

### 1. Creating C++ Files

The shell script begins by creating two C++ files, `name.cpp` and `country.cpp`, using the `touch` command:

```bash
touch name.cpp country.cpp
```

### 2. Writing C++ Code

Next, the script writes simple C++ programs into the newly created files using the `echo` command.

- **`name.cpp`** contains a program that prints "Ayush Poudel":

  ```cpp
  #include<iostream>
  int main(){
      std::cout<<"Ayush Poudel"<<std::endl;
      return 0;
  }
  ```

- **`country.cpp`** contains a program that prints "Nepal":

  ```cpp
  #include<iostream>
  int main(){
      std::cout<<"Nepal"<<std::endl;
      return 0;
  }
  ```

The `echo` commands in the script write the above code into the respective files:

```bash
# First File
echo '#include<iostream>
int main(){
    std::cout<<"Ayush Poudel"<<std::endl;
    return 0;
}' > name.cpp

# Second File
echo '#include<iostream>
int main(){
        std::cout<<"Nepal"<<std::endl;
        return 0;
}' > country.cpp
```

### 3. Compiling the C++ Files

The script then compiles these C++ files using the `g++` compiler with the `-std=c++11` standard, and outputs the binaries as `print_name` and `print_country`:

```bash
# Compile both files
g++ name.cpp -std=c++11 -o print_name
g++ country.cpp -std=c++11 -o print_country
```

### 4. Executing the Compiled Programs

Finally, the script executes the compiled binaries:

```bash
# Execute the files
./print_name
./print_country
```

Upon execution, the script outputs:

```
Ayush Poudel
Nepal
```

## How to Run the Script

1. Clone the repository:

   ```bash
   git clone https://github.com/yourusername/Shell-Scripting-Projects-and-Documentation.git
   ```

2. Navigate to the directory:

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

This will create the C++ files, compile them, and then execute them to print the desired outputs.

## Conclusion

This project provides a simple yet practical example of how to automate repetitive tasks using a shell script. By automating the process of writing, compiling, and running C++ programs, this project illustrates the power and efficiency of shell scripting in software development.
