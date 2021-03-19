view: book333_xlsx {
  sql_table_name: ovaledgedb.Book333_xlsx ;;

  dimension: domain {
    type: string
    sql: ${TABLE}.Domain ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.Name ;;
  }

  dimension: s_no {
    type: number
    sql: ${TABLE}.S_NO ;;
  }

  measure: count {
    type: count
    drill_fields: [name]
  }
}
