view: filestructurefcn {
  sql_table_name: ovaledgedb.filestructurefcn ;;

  dimension: columnname {
    type: string
    sql: ${TABLE}.columnname ;;
  }

  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
  }

  dimension: fcnid {
    type: number
    value_format_name: id
    sql: ${TABLE}.fcnid ;;
  }

  dimension: fcnname {
    type: string
    sql: ${TABLE}.fcnname ;;
  }

  dimension: fcntype {
    type: string
    sql: ${TABLE}.fcntype ;;
  }

  dimension: inputsize {
    type: number
    sql: ${TABLE}.inputsize ;;
  }

  dimension: regularexp {
    type: string
    sql: ${TABLE}.regularexp ;;
  }

  measure: count {
    type: count
    drill_fields: [fcnname, columnname]
  }
}
