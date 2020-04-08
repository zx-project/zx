zx/zargv
========

> Parse command line arguments supporting a variety of flag formats.

## Installation

In your project's `zz.toml` file:

```toml
[repos]
zx = "https://github.com/zx-project/zx.git"

[dependencies]
zargv = "*"
```

## API

> TODO

## Example

```c++
using zargv::{ ArgumentOptions }
using zargv

fn main(int argc, char **argv) -> int {
  int mut num = 0;
  bool mut help = false;
  bool mut version = false;
  char * mut name;
  char * mut array[3];

  new args = zargv::parser();
  args.int(&num, ArgumentOptions { name: "num", alias: "n" });
  args.bool(&help, ArgumentOptions { name: "help", alias: "h" });
  args.bool(&version, ArgumentOptions { name: "version", alias: "V" });
  args.string(&name, ArgumentOptions { name: "name", alias: "N" });
  args.array(&array, ArgumentOptions { name: "array", alias: "A" });
  args.parse(argv, argc);
  return 0;
}
```

## License

MIT

[curl]: ../curl
