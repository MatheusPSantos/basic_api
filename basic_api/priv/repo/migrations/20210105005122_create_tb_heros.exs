defmodule BasicApi.Repo.Migrations.CreateTbHeros do
  use Ecto.Migration

  def change do
    create table(:tb_heros) do
      add :first_name, :string
      add :last_name, :string
      add :nick_name, :string

      timestamps()
    end

  end
end
