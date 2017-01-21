defmodule CreateReactAppPhoenixExample.FoodControllerTest do
  use CreateReactAppPhoenixExample.ConnCase

  setup %{conn: conn} do
    {:ok, conn: put_req_header(conn, "accept", "application/json")}
  end

  test "lists all entries on index with query param", %{conn: conn} do
    q = "anything"
    conn = get conn, food_path(conn, :index, q: q)
    assert conn.status == 200
  end

  test "send BadRequest(400) when query is empty" do
    conn = get conn, food_path(conn, :index, q: "")
    assert conn.status == 400
  end

  test "send BadRequest(400) when no params given" do
    conn = get conn, food_path(conn, :index)
    assert conn.status == 400
  end

  # test "renders page not found when id is nonexistent", %{conn: conn} do
  #   assert_error_sent 404, fn ->
  #     get conn, food_path(conn, :show, -1)
  #   end
  # end
end
