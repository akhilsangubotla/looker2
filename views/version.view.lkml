view: version {
  sql_table_name: ovaledgedb.version ;;

  dimension: appversion {
    type: number
    sql: ${TABLE}.appversion ;;
  }

  dimension: comments {
    type: string
    sql: ${TABLE}.comments ;;
  }

  dimension: dbversion {
    type: number
    sql: ${TABLE}.dbversion ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
