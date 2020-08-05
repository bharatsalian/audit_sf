connection: "v310_audit_snowflake"

# include all the views
include: "/views/**/*.view"

datagroup: audit_sf_v1_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: audit_sf_v1_default_datagroup

explore: v310_load {}
