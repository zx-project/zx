zx
==

![][cover]

> A collection of experimental [ZZ][zz] modules.

## Installation

In your project's `zz.toml` file:

```toml
[repos]
zx = https://github.com/zx-project/zx.git
```

## Modules

### `utils`

Various utility functions, like memory management, etc.

See the [documentation](modules/utils) for more information.

#### Usage

```toml
[dependencies]
utils = "*"
```

```c++
using zxutils
```

### `curl`

A ZZ binding to `libcurl` that makes working with curl in ZZ much
easier.

See the [documentation](modules/curl) for more information.

#### Usage

```toml
[dependencies]
curl = "*"
```

```c++
using zxcurl
```

### `list`

A doubly-linked list implementation.

See the [documentation](modules/list) for more information.

#### Usage

```toml
[dependencies]
list = "*"
```

```c++
using zxlist
```

### `http`

A simple HTTP request library based on the [curl][curl] module.

See the [documentation](modules/http) for more information.

#### Usage

```toml
[dependencies]
http = "*"
```

```c++
using zxhttp
```

## See Also

* [ZZ][zz]

## License

MIT

[cover]: assets/cover.png
[zz]: https://github.com/zetzit/zz
