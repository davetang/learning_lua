# Learning Lua

[Programming in Lua (first edition)](https://www.lua.org/pil/contents.html).

## Hello World

[Getting Started](https://www.lua.org/pil/1.html)

```console
lua scripts/hello.lua
```
```
Hello World
```

## Notes

* Each piece of code that Lua executes, such as a file or a single line in interactive mode, is a _chunk_. More specifically, a chunk is simply a sequence of statements.
* Global variables do not need declarations. You simply assign a value to a global variable to create it. It is not an error to access a non-initialized variable; you just get the special value **nil** as the result.
    * If you need to delete a global variable, just assign nil to it.
* Identifiers in Lua can be any string of letters, digits, and underscores, not beginning with a digit.
* Reserved words:

```
    and       break     do        else      elseif
    end       false     for       function  if
    in        local     nil       not       or
    repeat    return    then      true      until
    while
```

* A comment starts anywhere with a double hyphen (`--`) and runs until the end of the line. Lua also offers block comments, which start with `--[[` and run until the corresponding `]]`.
* Use `#!/usr/bin/env lua` in scripts
* Lua is a dynamically typed language. There are no type definitions in the language; each value carries its own type.
* There are eight basic types in Lua: nil, boolean, number, string, userdata, function, thread, and table. The `type` function gives the type name of a given value.
* Nil is a type with a single value, nil, whose main property is to be different from any other value. As we have seen, a global variable has a nil value by default, before a first assignment, and you can assign nil to a global variable to delete it. Lua uses nil as a kind of non-value, to represent the absence of a useful value.
