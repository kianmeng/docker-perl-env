# docker-perl-env
Docker environment for different Perl's modules

## To bootstrap the environment
```
$ make
```

## To bootstrap example module, for example, modern-perl
```
$ cd modern-perl
$ make
$ make run
```

## To clean up your environment
```
$ cd modern-perl
$ make clean
```

## To bootstrap a new module not found in this repository.
```
$ make create Dist::Zilla
$ cd dist-zilla
$ make
$ make run
```
