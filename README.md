# elixir-wordpress-api
[![Build Status](https://travis-ci.org/ciamiz/elixir-wordpress-api.svg?branch=master)](https://travis-ci.org/ciamiz/elixir-wordpress-api)

Elixir interface for the WordPress XMLRPC API.

## Usage

First of all you need to define the server that will handle your remote procedure calls:

```elixir
server = %XMLRPC_Client.Server { host: "www.example.com", path: "xmlrpc.php", port: 80 }
```
The ```hostname``` of the server is the only mandatory value.

The next thing is to define the wordpress installation credentials:

```elixir
wordpress = %WordpressAPI.Blog { server: server, blog_id: 1, username: "example", password: "password" }
```
The ```blog_id``` is set to 1 by default, if you have a multi installation use the id of the blog you intend to use.
The ```username``` and ```password``` arguments are mandatory.

The APIs are organized in modules:

  1. WordpressAPI.Posts
  2. WordpressAPI.Taxonomies
  3. WordpressAPI.Media
  4. WordpressAPI.Comments
  5. WordpressAPI.Options
  6. WordpressAPI.Users

To call a specific API, you should pick it from the right module.
