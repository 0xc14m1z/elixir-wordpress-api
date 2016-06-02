defmodule WordpressAPI.Blog do
  defstruct server: %XMLRPC_Client.Server {}, blog_id: 1, username: nil, password: nil
end
