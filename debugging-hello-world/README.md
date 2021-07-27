# Sample Apps: Debugging Hello World


## Building image

```
podman build --no-cache -v "$(pwd)":/opt/project:rw,z -t extra2000/jruby-examples/debugging-hello-world .
```


## Running

```
podman run -it --rm -v ./:/opt/project:ro,z extra2000/jruby-examples/debugging-hello-world jruby src/hello-world.rb
```


## Debugging

```
podman run -it --rm -v ./:/opt/project:ro,z extra2000/jruby-examples/debugging-hello-world jruby --debug src/hello-world-debug.rb
```

Debug some variables and then continue:
```
p x
p x.inspect
p x.class
p y
p y.inspect
p y.class
c
```


## Linting

```
podman run -it --rm -v ./:/opt/project:ro,z extra2000/jruby-examples/debugging-hello-world jrlint src/*
```


## Packaging into gem

```
podman run -it --rm -v ./:/opt/project:rw,z extra2000/jruby-examples/debugging-hello-world gem build helloworld
```

To test, try install `hello-world-1.0.0.gem` file and list installed directory in `/usr/local/bundle/gems/hello-world-1.0.0`:
```
podman run -it --rm -v ./:/opt/project:ro,z extra2000/jruby-examples/debugging-hello-world bash
gem install hello-world-1.0.0.gem
ls -la /usr/local/bundle/gems/hello-world-1.0.0
```
