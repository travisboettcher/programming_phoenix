defmodule Rumbl.Repo.Migrations.AddSlugToVideo do
  use Ecto.Migration

  def change do
    alter table(:vidoes) do
      add :slug, :string
    end
  end
end
