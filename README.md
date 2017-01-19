# `create-react-app` with Phoenix/Elixir server example

[create-react-app](https://github.com/facebookincubator/create-react-app) working with a Phoenix API. This example simply swaps a Phoenix server into the app from Fullstack React's excellent [blog post](https://www.fullstackreact.com/articles/how-to-get-create-react-app-to-work-with-your-rails-api/) about setting up create-react-app with a Rails API.  The React components in this example are copied over directly from Fullstack React's [repo](https://github.com/fullstackreact/food-lookup-demo-rails/).

## Running

```
git clone git@github.com:jasongalvin/create_react_app_phoenix_example.git
cd create_react_app_phoenix_example
mix deps.get
mix ecto.create && mix ecto.migrate
mix run "priv/repo/seeds.exs"
cd client
npm i
cd ..
forego start
```

This setup uses [forego](https://github.com/ddollar/forego) for process management.  You could easily set it up with something like Foreman instead.

Now you can visit [`localhost:5000`](http://localhost:5000) from your browser.
