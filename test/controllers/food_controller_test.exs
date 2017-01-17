defmodule CreateReactAppPhoenixExample.FoodControllerTest do
  use CreateReactAppPhoenixExample.ConnCase

  setup %{conn: conn} do
    {:ok, conn: put_req_header(conn, "accept", "application/json")}
  end

  test "lists all entries on index", %{conn: conn} do
    conn = get conn, food_path(conn, :index)
    assert json_response(conn, 200) == []
  end

  # test "renders page not found when id is nonexistent", %{conn: conn} do
  #   assert_error_sent 404, fn ->
  #     get conn, food_path(conn, :show, -1)
  #   end
  # end
end
