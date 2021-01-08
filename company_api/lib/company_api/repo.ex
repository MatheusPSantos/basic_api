defmodule CompanyApi.Repo do
  use Ecto.Repo,
    otp_app: :company_api,
    adapter: Ecto.Adapters.Postgres
end
