# `create-react-app` with Phoenix/Elixir server example

[create-react-app](https://github.com/facebookincubator/create-react-app) with a Phoenix API. This example follows Fullstack React's excellent [blog post](https://www.fullstackreact.com/articles/how-to-get-create-react-app-to-work-with-your-rails-api/) about setting up create-react-app with a Rails API, but with a Phoenix server instead.  The React components in this example are copied over directly from Fullstack React's [repo](https://github.com/fullstackreact/food-lookup-demo-rails/).

## Get it running

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

Now you can visit [`localhost:3001`](http://localhost:3001) from your browser.

## Notes

This setup uses [forego](https://github.com/ddollar/forego) for process management.  You could easily set it up with something like Foreman instead.

The javascript app lives in the /client folder.

Improvements welcome, please create a pull request.
