defmodule BasicApiWeb.HeroView do
  use BasicApiWeb, :view
  alias BasicApiWeb.HeroView

  def render("index.json", %{tb_heros: tb_heros}) do
    %{data: render_many(tb_heros, HeroView, "hero.json")}
  end

  def render("show.json", %{hero: hero}) do
    %{data: render_one(hero, HeroView, "hero.json")}
  end

  def render("hero.json", %{hero: hero}) do
    %{id: hero.id,
      first_name: hero.first_name,
      last_name: hero.last_name,
      nick_name: hero.nick_name}
  end
end
