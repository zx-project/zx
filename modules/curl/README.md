zx/curl
=======

> ZZ bindings for libcurl for use in **zx**

## Installation

In your project's `zz.toml` file:

```toml
[repos]
zx = https://github.com/zx-project/zx.git

[dependencies]
curl = "*"
```

## Usage

```c++
using zxcurl as curl

fn main() -> int {
  new request = curl::easy::init();

  request.setopt(curl::options::URL, "https://github.com");

  if curl::OK != request.perform() {
    printf("%s\n", request.error_string());
  }

  request.cleanup();
  return 0;
}
```

## License

MIT
