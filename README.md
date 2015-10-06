My dope hubot

Just type `make` so as to initialize and run hubot locally.
```
$ make
```

You can use options too.
```
$ make clean    # rm -rf ./node_module so as to avoid errors
$ make install  # npm install -g yo generator-hubot
$ make run      # ./bin/hubot -a shell
$ make init     # make clean && make install
$ make all      # is equal to make; make clean && make install && make run
```
