defmodule Simple.UserView do
  use Simple.Web, :view

  def render("index.json", %{users: users}) do
    %{data: render_many(users, Simple.UserView, "user.json")}
  end

  def render("show.json", %{user: user}) do
    %{data: render_one(user, Simple.UserView, "user.json")}
  end

  def render("user.json", %{user: user}) do
    %{id: user.id,
      name: user.name,
      email: user.email}
  end
end
