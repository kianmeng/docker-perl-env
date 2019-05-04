# Perl Module(s) of the Week
Docker environment for different [Perl module(s) of the week](https://www.kianmeng.org/search/label/plmotw).

## To bootstrap the environment
```
$ make
```

## To bootstrap example module, for example, modern-perl
```
$ cd Modern-Perl
$ make
$ make run
```

## To clean up your environment
```
$ cd Modern-Perl
$ make clean
```

## To bootstrap a new module not found in this repository.
```
$ make create Dist::Zilla
$ cd Dist-Zilla
$ make
$ make run
```
