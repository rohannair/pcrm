defmodule PcrmWeb.Router do
  use PcrmWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", PcrmWeb do
    pipe_through :api
  end
end
