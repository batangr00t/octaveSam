# Octave installation in Ubuntu 16.10
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
GNU Octave, version 4.0.3
...
>> pkg update
>> pkg install -forge nan
>> pkg load all
>> help corrcoef
```
### install symbolic package
```bash
>> pkg install -forge symbolic
configure: WARNING: Failed to import SymPy: many features will not work
configure: WARNING: SymPy version 0.7.6 or later is recommended
For information about changes from previous versions of the symbolic package, run 'news symbolic'.
>>
```

go to shell, install sympy
```bash
$ sudo apt-get install python-sympy
```

back to Octave, install symbolic again.
```bash
>> pkg install -forge symbolic
For information about changes from previous versions of the symbolic package, run 'news symbolic'.
>>

