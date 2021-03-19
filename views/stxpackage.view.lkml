view: stxpackage {
  sql_table_name: ovaledgedb.stxpackage ;;

  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
  }

  dimension: packageid {
    type: number
    value_format_name: id
    sql: ${TABLE}.packageid ;;
  }

  dimension: packagename {
    type: string
    sql: ${TABLE}.packagename ;;
  }

  measure: count {
    type: count
    drill_fields: [packagename]
  }
}
