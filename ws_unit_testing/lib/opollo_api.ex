defmodule WsUnitTesting.OpolloAPI do
  use Tesla

  plug(Tesla.Middleware.BaseUrl, "https://dev-landing.onpoint.vn")
  plug(Tesla.Middleware.JSON)
  adapter(Tesla.Adapter.Hackney, recv_timeout: 30_000)

  def get_provinces() do
    case get("https://dev-landing.onpoint.vn/api_v2/provinces") do
      {:ok, %Tesla.Env{body: body}} ->
        {:ok, body}

      {:error, err} ->
        {:error, err}
    end
  end
end
