zx/http
=======

> A simple HTTP request library based on the [curl][curl] module.

## Installation

In your project's `zz.toml` file:

```toml
[repos]
zx = https://github.com/zx-project/zx.git

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

using zxhttp::{ RequestOptions, Response, Header }
using pool::{ Pool }

using zxutils as utils
using zxhttp as http
using pool

// memory pool with 262144 bytes (256kb) statically allocated
// for header allocation
static Pool+262144 mut memory = {0};

fn main() -> int {
  // initialize pool with 4096 byte page size
  pool::make(&memory, 4096);

  // install alloc/free functions for HTTP request memory allocation
  http::allocator::set_alloc(pool_alloc);
  http::allocator::set_free(pool_free);

  // make request for at most 10000 bytes of data
  new+10000 res = http::get(RequestOptions { url: "https://example.com" });

  // iterate and output response headers
  let mut headers = res.headers.iterator();
  while !headers.ended {
    let header = headers.next();
    let tuple = (Header *) header->value;
    printf("%s: %s\n", tuple->key, tuple->value);
  }

  printf("OUT=%s", res.to_cstr());

  res.destroy();

  return 0;
}

fn pool_alloc(usize size) -> void mut *
  where pool::continuous(memory) // for pool.alloc()
{
  if size != memory.blocksize {
    return memory.malloc(size);
  } else {
    return memory.alloc();
  }
}

fn pool_free(void mut *ptr)
  where pool::member(ptr, &memory) // for pool.alloc()
{
  memory.free(ptr);
}
```

## License

MIT

[curl]: ../curl
