# Sample Apps: Parsing YAML File


## Building image

```
podman build --no-cache -v "$(pwd)":/opt/project:rw,z -t extra2000/jruby-examples/parsing-yaml-file .
```


## Running

```
podman run -it --rm -v ./:/opt/project:ro,z extra2000/jruby-examples/parsing-yaml-file jruby src/parse-yaml.rb
```


## Debugging

```
podman run -it --rm -v ./:/opt/project:ro,z extra2000/jruby-examples/parsing-yaml-file jruby --debug src/parse-yaml.rb
```

Debug some variables and then continue:
```
p yamldata.class
p yamldata['janusgraph']
p yamldata['janusgraph']['lookup']['projectname']
c
```


## Linting

```
podman run -it --rm -v ./:/opt/project:ro,z extra2000/jruby-examples/parsing-yaml-file jrlint src/*
```


## Packaging into gem

```
podman run -it --rm -v ./:/opt/project:rw,z extra2000/jruby-examples/parsing-yaml-file gem build my-yaml-parser
```

To test, try install `hello-world-1.0.0.gem` file and list installed directory in `/usr/local/bundle/gems/hello-world-1.0.0`:
```
podman run -it --rm -v ./:/opt/project:ro,z extra2000/jruby-examples/parsing-yaml-file bash
gem install my-yaml-parser-1.0.0.gem
ls -la /usr/local/bundle/gems/my-yaml-parser-1.0.0
```
