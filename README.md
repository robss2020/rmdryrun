# Motivation

Since `rm -rf` is so dangerous, many people have wondered why `rm` doesn't have a `--dry-run` switch.  It's time to stop wondering and do something about it.

## `rmdryrun`

rmdryrun is a Linux shell script that simulates the behavior of the `rm` command, but instead of actually deleting files, it displays a list of files and directories that would be deleted.

## Installation

### Clone or download the repository.

```
git clone https://github.com/robss2020/rmdryrun.git
```

and then `cd rmdryrun` into the cloned directory.

or just get the file:


```
curl https://raw.githubusercontent.com/robss2020/rmdryrun/main/rmdryrun.sh
```

or

```
wget https://raw.githubusercontent.com/robss2020/rmdryrun/main/rmdryrun.sh
```

Examine the file and breathe in its fine aroma of absolutely no actual `rm` commands.  `rmdryrun.sh` is a single file.

### Make the `rmdryrun.sh` file executable:

```
chmod +x rmdryrun.sh
```

You let the file sit and decant under your careful examination right?

### Copy the file to a directory in your PATH, such as `/usr/local/bin`:

```
sudo cp rmdryrun.sh /usr/local/bin/rmdryrun.sh
```


## Usage

The basic usage of `rmdryrun` is similar to the `rm` command:

```
rmdryrun [files or directories]
```

The -r or --recursive option can be used to recursively remove directories:

```
rmdryrun -r [directories]
```

## Example

Displaying the files that would be removed from the current directory:

```
$ rmdryrun *
	Would remove file file1.txt
	Would remove file file2.txt
	Would NOT remove directory dir1 (use -r to remove recursively)
```

Using the -r option to recursively display the files that would be removed from a directory:

```
   $ rmdryrun -r dir1
	  Would remove file dir1/file1.txt
	  Would remove file dir1/file2.txt
	  Would NOT remove directory dir1/dir2 (use -r to remove recursively)
```

If you like what you can see you can then go up in your history (up arrow) remove the word "`dryrun`" from the end of the command and add `-f` to remove confirmations and run the `rm` command directly. The same files should be deleted.

Plase let me know of any cases in which `rm` deletes different files from what `rmdryrun` previewed: `rviragh+rmdryrun@gmail.com`

## LICENSE

This project is licensed under the MIT License, see LICENSE for full text.