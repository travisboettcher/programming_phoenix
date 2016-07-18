defmodule Rumbl.Repo.Migrations.AddCategoryIdToVideo do
  use Ecto.Migration

  def change do
    alter table(:vidoes) do
      add :category_id, references(:categories)
    end
  end
end
