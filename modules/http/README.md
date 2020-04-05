zx/http
=======

> A simple HTTP request library based on the [curl][curl] module.

## Installation

In your project's `zz.toml` file:

```toml
[repos]
zx = "https://github.com/zx-project/zx.git"

[dependencies]
http = "*"
```

## API

### Requests

#### `new+length response = zxhttp::get(RequestOptions options)`

Initiates a new `GET` request with a tail variant
[`Response+length`](#struct-response) configured with
[`RequestOptions`](#struct-request-options)


##### Example

```c++
new+4096 res = http::get(RequestOptions { url: "https://example.com" });
```

#### `new+length response = zxhttp::head(RequestOptions options)`

> TODO

##### Example

```c++
```

#### `new+length response = zxhttp::request(RequestOptions options)`

> TODO

##### Example

```c++
```

<a name="struct-request-options"></a>
#### `struct `RequestOptions`

### Responses

<a name="struct-response"></a>
#### `struct Response+length`

### HTTP Methods

```c++z
using zxhttp::methods::{
  DELETE,
  GET,
  HEAD,
  PATCH,
  POST,
  PUT,
  OPTIONS
}
```


### Headers

#### `struct Header`

> TODO

##### Example

```c++
```


## Example Usage

```c++
using <stdio.h>::{ printf }

using zxhttp::{ RequestOptions }

using zxutils as utils
using zxhttp as http

fn main() -> int {
  // `4000000` byte pool size
  new+4000000 res = http::get(RequestOptions { url: "https://github.com" });

  // iterate and output response headers
  let mut headers = res.headers.iterator();
  while !headers.ended {
    let header = headers.next();
    printf("< %s: %s\n", header->key, header->value);
  }

  printf("%s", res.data);

  res.destroy();

  return 0;
}
```

## License

MIT

[curl]: ../curl
