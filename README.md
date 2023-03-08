# pleskcd - Easy browse plesk subscription directories. 

`pleskcd` is a Bash script that allows you to quickly change to the document root directory of a domain on a Plesk server.

When executed with a domain name as an argument, the script changes the current working directory to the document root directory of the specified domain. The script is designed to be executed with the `source` command to ensure that the current working directory is changed in the current shell.

## Installation

To install the `pleskcd` script on your Plesk server, follow these steps:

1. Download the `pleskcd` script to a directory of your choice:


Replace `https://example.com/pleskcd.sh` with the actual URL where the `pleskcd` script is located.

2. Copy the `pleskcd` script to a directory in the system's `PATH` environment variable, such as `/usr/local/bin`:

```bash
$ sudo cp pleskcd.sh /usr/local/bin/pleskcd

```

3. Define an alias for the `pleskcd` script in your shell's configuration file, such as `~/.bashrc`, with the `source` command included:

```bash
alias pleskcd='source /usr/local/bin/pleskcd'

```


4. Save and exit the configuration file, then reload it to apply the changes:

```bash
$ source ~/.bashrc

```


## Usage

To use the `pleskcd` script, simply run it with a domain name as an argument:

```bash
$ pleskcd example.com
```



### Troubleshooting

If the `pleskcd` script is not working as expected, there are a few possible issues to check:

- **Permission issues**: Make sure that the user running the script has permission to access the target directory. If necessary, adjust the permissions or ownership of the directory to allow access.
- **Typos**: Double-check that the domain name is spelled correctly and that the path to the directory is correct.
- **Subshell issue**: If the script is being run in a subshell, any changes to the current directory made by the `cd` command will not be reflected in the parent shell. Make sure to run the script with the `source` command or via the defined alias to ensure that changes to the current directory affect the current shell.

