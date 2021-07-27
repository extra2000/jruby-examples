# Sample Apps: Executable Hello World


## Building image

```
podman build --no-cache -v "$(pwd)":/opt/project:rw,z -t extra2000/jruby-examples/executable-hello-world .
```


## Running

```
podman run -it --rm -v ./:/opt/project:ro,z extra2000/jruby-examples/executable-hello-world ./bin/hello-world
```


## Packaging into gem

```
podman run -it --rm -v ./:/opt/project:rw,z extra2000/jruby-examples/executable-hello-world gem build helloworld
```

To test, try install `hello-world-1.0.0.gem` file execute `hello-world` command:
```
podman run -it --rm -v ./:/opt/project:ro,z extra2000/jruby-examples/executable-hello-world bash
gem install hello-world-1.0.0.gem
hello-world
```

**NOTE:** The executable file can be found in `/usr/local/bundle/bin/hello-world`.
