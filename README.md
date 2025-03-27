# makeExecutable

A quick and easy way to make any file executable and create a custom command for it on your system.

### Installation
---------------

To install the MakeExecutable script, follow these steps:

#### Using GitHub

You can install MakeExecutable directly from GitHub using the following command. This will download the script, place it in `/usr/local/bin`, and make it executable:
```bash
curl -sSL https://raw.githubusercontent.com/palpitate013/makeExecutable/main/install.sh | sudo bash
```
This command:

*   Downloads the installation script (`install.sh`).
*   Runs the script to place `makeExecutable.py` in `/usr/local/bin`.
*   Gives it execute permissions.

After installation, you can run MakeExecutable from anywhere in your terminal.

### Usage
-----

Once installed, use the following syntax:
```bash
makeExecutable <file_path> <executable_name> [--start]
```
#### Parameters:

*   `<file_path>`: The path to the file you want to make executable.
*   `<executable_name>`: The custom name for your executable command.
*   `--start` (optional): If included, saves the executable command to a JSON file for easy retrieval.

**Example Use Cases**
--------------------

### Make a Python Script Executable

To make a Python script (`hello.py`) executable and create a command named "hello", use:
```bash
makeExecutable /path/to/hello.py hello
```
This will:

*   Place the executable in `/usr/local/bin/hello`.
*   Give it execute permissions, so you can run it from anywhere with `hello`.

### Save Executable Command to JSON File

To save the executable command to a JSON file:
```bash
makeExecutable /path/to/hello.py hello --start
```
**Updating the Script**
---------------------

To keep MakeExecutable up-to-date, use the following command:
```bash
makeExecutable --update
```
This checks for new versions on GitHub and updates it if a newer version is found.

### Uninstalling the Script
-------------------------

If you no longer want the script installed:

1.  Delete `MakeExecutable.py` from `/usr/local/bin`.
2.  Remove any associated files using:
```bash
curl -sSL https://raw.githubusercontent.com/palpitate013/makeExecutable/main/uninstall.sh | sudo bash
```
This will remove all MakeExecutable-related files and scripts.
