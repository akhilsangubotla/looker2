view: license {
  sql_table_name: ovaledgedb.license ;;

  dimension: lickey {
    type: string
    sql: ${TABLE}.lickey ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
