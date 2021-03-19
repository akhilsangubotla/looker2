view: tab_ins {
  sql_table_name: ovaledgedb.tab_ins ;;

  dimension: cnt {
    type: number
    sql: ${TABLE}.cnt ;;
  }

  dimension: size {
    type: number
    sql: ${TABLE}.size ;;
  }

  dimension: tabname {
    type: string
    sql: ${TABLE}.tabname ;;
  }

  measure: count {
    type: count
    drill_fields: [tabname]
  }
}
