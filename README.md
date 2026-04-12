### Overview
A small program that creates C-style headers containing the mesh and texture data from .obj files. Currently only faces of the form 
```
f 1/2/3 1/2/3 1/2/3
```
are supported, ie. we expect texture and normal indices.
### Usage
```
$ ./xobjToC path-to-input/file.obj
    -> this creates path-to-input/mesh_file.h
```
or you might want to specify output folder/file,
```
$ ./xobjToC path-to-input/file.obj -o path-to-output/
    -> this creates path-to-output/mesh_file.h
$ ./xobjToC path-to-input/file.obj -o path-to-output/out.h
    -> this creates path-to-output/out.h
```
