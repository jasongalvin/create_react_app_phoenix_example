defmodule CreateReactAppPhoenixExample.Router do
  use CreateReactAppPhoenixExample.Web, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", CreateReactAppPhoenixExample do
    pipe_through :api

    resources "/food", FoodController, only: [:index]
  end
end
