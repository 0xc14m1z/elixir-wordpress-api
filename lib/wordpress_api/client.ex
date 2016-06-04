defmodule WordpressAPI.Client do
  def call(wordpress, method, params) do
    credentials = %{blog_id: wordpress.blog_id, username: wordpress.username, password: wordpress.password}
    options = Map.merge(credentials, params)
    XMLRPC_Client.call(wordpress.server, method, [options])
  end
end
