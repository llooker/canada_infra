connection: "looker-private-demo"

# include all the views
include: "/views/**/*.view"
include: "/dashboards/*.dashboard"

datagroup: psca_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: psca_default_datagroup

explore: inframapdata {}

explore: expected_life {}
