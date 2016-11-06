# Octave installation in Ubuntu 16.04
```bash
$ sudo add-apt-repository ppa:octave/stable
$ sudo apt-get update
$ sudo apt-get install octave
$ cd .config/octave
$ sudo chown [user] qt-settings
```

# Octave package installation
## install liboctave-dev
```bash
$ sudo apt install liboctave-dev
```
## install a octave package ( ex, nan package )
```bash
$ octave 
GNU Octave, version 4.0.2
Copyright (C) 2016 John W. Eaton and others.
This is free software; see the source code for copying conditions.
There is ABSOLUTELY NO WARRANTY; not even for MERCHANTABILITY or
FITNESS FOR A PARTICULAR PURPOSE.  For details, type 'warranty'.

Octave was configured for "x86_64-pc-linux-gnu".

Additional information about Octave is available at http://www.octave.org.

Please contribute if you find this software useful.
For more information, visit http://www.octave.org/get-involved.html

Read http://www.octave.org/bugs.html to learn how to submit bug reports.
For information about changes from previous versions, type 'news'.

>> pkg update
>> pkg install -forge nan
>> pkg load all
>> help corrcoef
```
