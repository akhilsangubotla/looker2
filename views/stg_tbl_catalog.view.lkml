view: stg_tbl_catalog {
  sql_table_name: ovaledgedb.stg_tbl_catalog ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: column_name {
    type: string
    sql: ${TABLE}.column_name ;;
  }

  dimension: content {
    type: string
    sql: ${TABLE}.content ;;
  }

  dimension: database_name {
    type: string
    sql: ${TABLE}.database_name ;;
  }

  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
  }

  dimension: error_msg {
    type: string
    sql: ${TABLE}.error_msg ;;
  }

  dimension: processed_flag {
    type: yesno
    sql: ${TABLE}.processed_flag ;;
  }

  dimension: schema_name {
    type: string
    sql: ${TABLE}.schema_name ;;
  }

  dimension: table_name {
    type: string
    sql: ${TABLE}.table_name ;;
  }

  measure: count {
    type: count
    drill_fields: [id, database_name, schema_name, table_name, column_name]
  }
}
