defmodule ReproductionOfSchemaMigratorSqlLoggingIssue.Repo do
  use Ecto.Repo,
    otp_app: :reproduction_of_schema_migrator_sql_logging_issue,
    adapter: Ecto.Adapters.Postgres
end
