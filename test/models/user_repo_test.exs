defmodule Rumbl.UserRepoTest do
  use Rumbl.ModelCase
  alias Rumbl.User

  @valid_attrs %{name: "A User", username: "eric"}

  test "converts unique_constraint on username to error" do
    insert_user(username: "eric")
    changeset = User.changeset(%User{}, @valid_attrs)

    assert {:error, changeset} = Repo.insert(changeset)
    assert {:username, "has already been taken"} in changeset.errors
  end
end
