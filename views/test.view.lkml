view: test {
  sql_table_name: "DBO"."TEST"
    ;;

  dimension: column_name {
    type: string
    sql: ${TABLE}."COLUMN_NAME" ;;
  }

  dimension: dml_type {
    type: string
    sql: ${TABLE}."DML_TYPE" ;;
  }

  dimension: modified_by {
    type: string
    sql: ${TABLE}."MODIFIED_BY" ;;
  }

  dimension_group: modified {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}."MODIFIED_DATE" ;;
  }

  dimension: new_value {
    type: string
    sql: ${TABLE}."NEW_VALUE" ;;
  }

  dimension: old_value {
    type: string
    sql: ${TABLE}."OLD_VALUE" ;;
  }

  dimension: primary_key {
    type: string
    sql: ${TABLE}."PRIMARY_KEY" ;;
  }

  dimension: table_name {
    type: string
    sql: ${TABLE}."TABLE_NAME" ;;
  }

  measure: count {
    type: count
    drill_fields: [column_name, table_name]
  }
}
