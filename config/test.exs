import Config

# Configure your database
#
# The MIX_TEST_PARTITION environment variable can be used
# to provide built-in test partitioning in CI environment.
# Run `mix help test` for more information.
config :reproduction_of_schema_migrator_sql_logging_issue,
       ReproductionOfSchemaMigratorSqlLoggingIssue.Repo,
       username: "postgres",
       password: "postgres",
       hostname: "localhost",
       database:
         "reproduction_of_schema_migrator_sql_logging_issue_test#{System.get_env("MIX_TEST_PARTITION")}",
       pool: Ecto.Adapters.SQL.Sandbox,
       pool_size: 10

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :reproduction_of_schema_migrator_sql_logging_issue,
       ReproductionOfSchemaMigratorSqlLoggingIssueWeb.Endpoint,
       http: [ip: {127, 0, 0, 1}, port: 4002],
       secret_key_base: "5QMawkkSMtngw7K3kgBbgunQtGFsKdje3e8lPO9K206NLtFZBMetYUls54nnJ4wz",
       server: false

# In test we don't send emails.
config :reproduction_of_schema_migrator_sql_logging_issue,
       ReproductionOfSchemaMigratorSqlLoggingIssue.Mailer,
       adapter: Swoosh.Adapters.Test

# Print only warnings and errors during test
config :logger, level: :warn

# Initialize plugs at runtime for faster test compilation
config :phoenix, :plug_init_mode, :runtime
