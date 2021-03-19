view: sampletable {
  sql_table_name: ovaledgedb.sampletable ;;

  dimension: test01 {
    type: number
    sql: ${TABLE}.test01 ;;
  }

  dimension: test02 {
    type: string
    sql: ${TABLE}.test02 ;;
  }

  dimension: test04 {
    type: string
    sql: ${TABLE}.test04 ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
