view: v310_load {
  sql_table_name: "DBO"."V310LOAD"
    ;;

  dimension: column_name {
    type: string
    sql: ${TABLE}."COLUMN_NAME" ;;
  }

  dimension: dml_type {
    type: string
    sql: ${TABLE}."DML_TYPE" ;;
  }

  dimension: dml_desc{
    type: string
    sql: case  when ${dml_type} = 'I' then 'Insert'
               when ${dml_type} = 'U' then 'Update'
               when  ${dml_type} = 'D' then 'Delete'
               else 'Not Set'
         end;;
    order_by_field: dml_type
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
    drill_fields: [table_name, column_name,primary_key,new_value,old_value,modified_by,modified_date,dml_desc]
  }
}
