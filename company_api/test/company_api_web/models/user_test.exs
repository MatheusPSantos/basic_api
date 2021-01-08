defmodule CompanyApiWeb.UserTest do
  use CompanyApiWeb.DataCase, async: true

  test "user wuth valid attributes" do
    user = CompanyApiWeb.User.reg_changeset(%User{}, @valid_attributes)
    assert user.valid?
  end
end
