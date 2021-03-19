view: hivecolumn1 {
  sql_table_name: ovaledgedb.hivecolumn1 ;;

  dimension: beavercolumntype {
    type: string
    sql: ${TABLE}.beavercolumntype ;;
  }

  dimension: columnlength {
    type: number
    sql: ${TABLE}.columnlength ;;
  }

  dimension: columnname {
    type: string
    sql: ${TABLE}.columnname ;;
  }

  dimension: columnposition {
    type: number
    sql: ${TABLE}.columnposition ;;
  }

  dimension: columnrank {
    type: number
    sql: ${TABLE}.columnrank ;;
  }

  dimension: columnscore {
    type: number
    sql: ${TABLE}.columnscore ;;
  }

  dimension: comments {
    type: string
    sql: ${TABLE}.comments ;;
  }

  dimension: displayeligible {
    type: yesno
    sql: ${TABLE}.displayeligible ;;
  }

  dimension: distinctcount {
    type: number
    sql: ${TABLE}.distinctcount ;;
  }

  dimension: hivecolumnid {
    type: number
    value_format_name: id
    sql: ${TABLE}.hivecolumnid ;;
  }

  dimension: hivecolumntype {
    type: string
    sql: ${TABLE}.hivecolumntype ;;
  }

  dimension: hivetableid {
    type: number
    value_format_name: id
    sql: ${TABLE}.hivetableid ;;
  }

  dimension: mask {
    type: yesno
    sql: ${TABLE}.mask ;;
  }

  dimension: maxval {
    type: string
    sql: ${TABLE}.maxval ;;
  }

  dimension: minval {
    type: string
    sql: ${TABLE}.minval ;;
  }

  dimension: nullcount {
    type: number
    sql: ${TABLE}.nullcount ;;
  }

  dimension: restricted {
    type: yesno
    sql: ${TABLE}.restricted ;;
  }

  dimension: schemaname {
    type: string
    sql: ${TABLE}.schemaname ;;
  }

  dimension: tablename {
    type: string
    sql: ${TABLE}.tablename ;;
  }

  dimension: topvalues {
    type: string
    sql: ${TABLE}.topvalues ;;
  }

  dimension: typestats {
    type: string
    sql: ${TABLE}.typestats ;;
  }

  measure: count {
    type: count
    drill_fields: [schemaname, tablename, columnname]
  }
}
